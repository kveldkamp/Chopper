//
//  ContentView.swift
//  Trim
//
//  Created by Kevin Veldkamp on 12/10/23.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State private var recipeUrl: String = ""
    @State private var ingredients = ["1","2","3"]
    @State private var directions = ["step 1","step 2","step 3"]
    let placeHolderText = "Paste recipe URL here"
    let parser = HtmlParser()

    var body: some View {
        VStack(alignment: .center) {
            TextField(
                placeHolderText,
                text: $recipeUrl
            )
            Button("Fetch recipe") {
                fetchRecipe()
            }
                Text("Ingredients")
                List(ingredients, id: \.self) { ingredient in
                    Text(ingredient)
                }
                .padding(.top,10)
                
                Text("Directions")
                List(directions, id: \.self) { ingredient in
                    Text(ingredient)
                }
                .padding(.top,10)

            
        }
        .padding(5)
    }
    
    
    
    private func fetchRecipe(){
        fetchData(from: URL(string: recipeUrl)!)
    }
    
    func fetchData(from url: URL) {
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print("Error: \(error)")
            } else if let data = data {
                if let htmlString = String(data: data, encoding: .utf8) {
                    // Now you have the HTML content in the htmlString
                    self.getIngredients(htmlString: htmlString)
                    self.getDirections(htmlString: htmlString)
                }
            }
        }

        task.resume()
    }

    func getIngredients(htmlString: String) {
        ingredients = parser.extractIngredients(html: htmlString)
    }
    
    func getDirections(htmlString: String) {
        directions = parser.extractDirections(html: htmlString)
    }

}

#Preview {
    ContentView()
}
