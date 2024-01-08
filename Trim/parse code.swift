
//Assuming you're using Swift Package Manager, add the following dependency to your Package.swift file:

//swift
//Copy code
/*
dependencies: [
    .package(url: "https://github.com/scinfu/SwiftSoup.git", from: "2.3.2"),
],
targets: [
    .target(name: "YourApp", dependencies: ["SwiftSoup"]),
]
 
 */
//Then, run swift build to fetch the dependencies.

//Now, you can use the SwiftSoup library to parse the HTML and extract the relevant information. Here's a basic example:

//swift
//Copy code
/*
import SwiftSoup
import Foundation

func extractRecipeInfo(from html: String) {
    do {
        let doc = try SwiftSoup.parse(html)
        
        // Extract ingredients
        let ingredientsElements = try doc.select("ul.ingredients li")
        let ingredients = try ingredientsElements.map { try $0.text() }
        
        // Extract instructions
        let instructionsElements = try doc.select("div.instructions p")
        let instructions = try instructionsElements.map { try $0.text() }
        
        // Print the extracted information
        print("Ingredients:")
        for ingredient in ingredients {
            print("- \(ingredient)")
        }
        
        print("\nInstructions:")
        for (index, instruction) in instructions.enumerated() {
            print("\(index + 1). \(instruction)")
        }
    } catch {
        print("Error parsing HTML: \(error)")
    }
}
 
 */
