//
//  GrocertCategory.swift
//  Camera.Swift
//
//  Created by Salmdo on 4/24/23.
//

import Foundation

struct GroceryCategory{
    let title: String
    let groceryItems: [GroceryItem]
}

struct GroceryItem {
    let title: String
    let price: Double
}

extension GroceryCategory {
    static func all() -> [GroceryCategory] {
        return [
            GroceryCategory(title: "Cate1", groceryItems: [GroceryItem(title: "Item 1", price: 12.0),GroceryItem(title: "Item 2", price: 30.2)]),
            GroceryCategory(title: "Cate12", groceryItems: [GroceryItem(title: "Item 45", price: 12.0),GroceryItem(title: "Item 90", price: 30.2)])
        ]
    }
}
