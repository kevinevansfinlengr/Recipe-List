//
//  RecipeModel.swift
//  Recipe List
//
//  Created by KEVIN EVANS on 3/17/22.
//

import Foundation

class RecipeModel: ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init() {
        // create an instance of data service and get the data
        self.recipes = DataService.getLocalData()
        
        // Set the recipes property
    }
    
}
