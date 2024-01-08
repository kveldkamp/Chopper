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
    @State private var resultText = ""
    let placeHolderText = "Paste recipe URL here"

    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/) {
            TextField(
                placeHolderText,
                text: $recipeUrl
            )
            Button("Fetch recipe") {
                fetchRecipe()
            }
            ScrollView{
                Text(resultText)
                    .padding(.top,20)
            }
        }
    }
    
    
    
    private func fetchRecipe(){
        fetchData(from: URL(string: recipeUrl)!)
        recipeUrl = placeHolderText
    }
    
    func fetchData(from url: URL) {
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print("Error: \(error)")
            } else if let data = data {
                if let htmlString = String(data: data, encoding: .utf8) {
                    // Now you have the HTML content in the htmlString
                    self.parseHTML(htmlString)
                }
            }
        }

        task.resume()
    }

    func parseHTML(_ htmlString: String) {
        // Implement your HTML parsing logic here
        // You can use SwiftSoup or other HTML parsing libraries

        // Example: Print the HTML content
        print(htmlString)
        resultText = htmlString
    }





}

#Preview {
    ContentView()
}
