//
//  RecipeDetailView.swift
//  Recipe List
//
//  Created by KEVIN EVANS on 3/24/22.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe: Recipe
    
    var body: some View {
        
        ScrollView {
            
            VStack(alignment: .leading) {
                //MARK: Title
                Text(recipe.name)
                    .font(.largeTitle)
                    .padding()
                
                //MARK: Recipe Image
                Image(recipe.image)
                    .resizable()
                    .scaledToFill()
                
                //MARK: Ingredients
                VStack(alignment: .leading) {
                    Text("Ingredients")
                        .font(.headline)
                        .padding(.bottom, 5)
                    
                    ForEach(recipe.ingredients, id: \.self) { item in
                        Text("- " + item)
                    }
                }
                
                //MARK: Directions
                VStack(alignment: .leading) {
                    Text("Directions")
                        .font(.headline)
                        .padding(.bottom, 5)
                    
                    ForEach(recipe.directions, id:\.self) {thing in
                        
                        Text("=> " + thing)
                            .padding(.bottom, 2)
                    }
                }
            }
            
            
        }.padding(.horizontal)
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        // create a dummy recipe
        let model = RecipeModel()
        
        RecipeDetailView(recipe: model.recipes[0])
    }
}
