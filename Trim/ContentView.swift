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
        recipeUrl = placeHolderText
        resultText = Constants.mockResultText
    }




}

#Preview {
    ContentView()
}
