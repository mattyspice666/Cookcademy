//
//  RecipeCategoryGridView.swift
//  Cookcademy
//
//  Created by Matthew Larrabee on 2/16/22.
//

import SwiftUI
 
struct RecipeCategoryGridView: View {
  @EnvironmentObject private var recipeData: RecipeData
 
  var body: some View {
    let columns = [GridItem(), GridItem()]
    NavigationView {
      ScrollView {
          LazyVGrid(columns: columns, content: {
          ForEach(MainInformation.Category.allCases,
                  id: \.self) { category in
            NavigationLink(
                destination: RecipesListView(viewStyle: .singleCategory(category)), label: {
                    CategoryView(category: category)
                })
                .environmentObject(recipeData)
          }
        })
      }
      .navigationTitle("Categories")
    }
  }
}
 
struct CategoryView: View {
  let category: MainInformation.Category
 
  var body: some View {
    ZStack {
      Image(category.rawValue)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .opacity(0.35)
      Text(category.rawValue)
        .font(.title)
    }
  }
}

struct RecipeCategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCategoryGridView()
    }
}
