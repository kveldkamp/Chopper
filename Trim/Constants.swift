//
//  Constants.swift
//  Trim
//
//  Created by Kevin Veldkamp on 12/10/23.
//

import Foundation

public  struct Constants {
    // don't ship with this
    static let openAIapiKey = "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"
    static let jsonFormatPromptString = "In this JSON format: { Ingredients: [String], Instructions: [String]"
    
    static let mockResultText = """
        {
        "Ingredients": [
        "2 boneless, skinless chicken breasts (about 1.3 lbs. total)",
        "1 Tbsp cooking oil",
        "1 small yellow onion",
        "2 cloves garlic",
        "1 (4 oz.) can diced green chilies",
        "1/4 tsp cumin",
        "1/4 tsp dried oregano",
        "1/8 tsp salt",
        "1 cup sour cream",
        "8 oz. Monterey Jack cheese, shredded",
        "10-12 small flour tortillas (7-inch)",
        "1/4 bunch cilantro (optional)"
        ],
        "Instructions": [
        "Preheat the oven to 350ºF. Add a drizzle of cooking oil to a large skillet and heat over medium. Once hot, add the chicken breasts and cook until browned on both sides and cooked through (165ºF internal temperature). Remove the chicken from the skillet and let it cool slightly.",
        "While the chicken is cooking, finely dice the onion and mince the garlic. Add the onion and garlic to the skillet after the chicken has been removed and sauté until the onions are soft and translucent.",
        "Add the diced green chiles (with juices) to the skillet along with the cumin, oregano, and salt. Stir and cook for one minute more.",
        "Transfer the onion and green chili mixture to a large bowl. Use two forks to shred the cooked chicken, then add it to the bowl with the green chile mixture. Also add the sour cream and shredded Monterey Jack cheese to the bowl with the chicken mixture. Stir everything until evenly combined.",
        "Smear a small amount of the chicken and cheese mixture in the bottom of a 9×13 inch casserole dish. Add a heaping 1/4 cup chicken mixture to the center of each flour tortilla and roll it up. Place the filled tortillas in the casserole dish with the seam side down. Once all of the tortillas are filled and placed in the dish, top with any remaining cheese. Cover the casserole with foil and bake in the preheated oven for 30 minutes.",
        "After 30 minutes, remove the foil and return the casserole to the oven, uncovered, for an additional 10-15 minutes, or until the cheese is fully melted and bubbly. Top with fresh cilantro, if desired, and serve hot."
        ]
        }
        """
}
