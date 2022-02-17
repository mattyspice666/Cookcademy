//
//  ContentView.swift
//  Cookcademy
//
//  Created by Matthew Larrabee on 2/16/22.
//

import SwiftUI

struct RecipesListView: View {
  @StateObject var recipeData = RecipeData()
  var body: some View {
    List {
      ForEach(recipeData.recipes) { recipe in
        Text(recipe.mainInformation.name)
      }
    }
    .navigationTitle("All Recipes")
  }
}
 
struct RecipesListView_Previews: PreviewProvider {
  static var previews: some View {
    NavigationView {
      RecipesListView()
    }
  }
}
