//
//  HtmlParser.swift
//  Trim
//
//  Created by Kevin Veldkamp on 1/21/24.
//

import Foundation
import SwiftSoup

class HtmlParser {
    
    func extractIngredients(html: String) -> [String] {
        var ingredients = [String]()
        do {
            let doc = try SwiftSoup.parse(html)
            
            // Extract ingredients
            let h3Headers: Elements = try doc.select("h3")
            for header in h3Headers {
                if try header.text().lowercased().contains("ingredients"){
                    //maybe found ingredients, go to ul next
                    let nextElement = try header.nextElementSibling()
                    if let nextElement = nextElement {
                        if nextElement.tagName() == "ul"{
                            for child in  nextElement.children(){
                                let possibleIngredient = try child.text()
                                if let firstChar = possibleIngredient.first, firstChar.isNumber {
                                    ingredients.append(possibleIngredient)
                                }
                            }
                        }
                    }
                }
            }
            
            
            // let ingredients = try h3Headers.map { try $0.text() }
            // print(ingredients)
            
        } catch {
            print("Error parsing HTML: \(error)")
        }
        print("ingredients \(ingredients)")
        return ingredients
    }
    
}
