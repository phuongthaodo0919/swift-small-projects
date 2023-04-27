//
//  GroceryView.swift
//  Camera.Swift
//
//  Created by Salmdo on 4/24/23.
//

import SwiftUI

struct GroceryView: View {
    var groceryList: [GroceryCategory] = GroceryCategory.all()
    
    var body: some View {
        List {
            ForEach(groceryList, id: \.title) { list in
                Section(list.title) {
                    ForEach(list.groceryItems, id: \.title) { item in
                        Text(item.title)
                    }
                }
            }
        }
    }
}

struct GroceryView_Previews: PreviewProvider {
    static var previews: some View {
        GroceryView()
    }
}
