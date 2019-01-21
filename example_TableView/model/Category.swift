//
//  Category.swift
//  example_TableView
//
//  Created by Pol monleon vives on 18/01/2019.
//  Copyright © 2019 Pol monleon vives. All rights reserved.
//

import Foundation

class Category{
    private var name:String?
    private var items:[Item]?
    
    init(items:[Item], name:String){
        self.items = items
        self.name = name
    }
    init(name:String){
        self.items = []
        self.name = name
    }
    
    func devolverItems() -> [Item]{
        return self.items!
    }
    
    func devolverNombre() -> String{
        return self.name!
    }
    
    func addItem(item:Item){
        self.items!.append(item)
    }
}
