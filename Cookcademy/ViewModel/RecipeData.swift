//
//  RecipeData.swift
//  Cookcademy
//
//  Created by Matthew Larrabee on 2/16/22.
//

import Foundation

class RecipeData: ObservableObject {
  @Published var recipes = Recipe.testRecipes
}
