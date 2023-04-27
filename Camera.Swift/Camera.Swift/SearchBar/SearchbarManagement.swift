//
//  SearchbarManagement.swift
//  Camera.Swift
//
//  Created by Salmdo on 4/25/23.
//

import Foundation
import SwiftUI

class SearchBarCoordinator: NSObject, UISearchBarDelegate {
    @Binding var searchString: String
    
    init(initSearchString: Binding<String>) {
        _searchString = initSearchString
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        searchString = searchText
    }
}

struct SearchBar: UIViewRepresentable {
    
    @Binding var searchString: String
    
    func makeCoordinator() -> SearchBarCoordinator {
        return SearchBarCoordinator(initSearchString: $searchString)
    }
    
    func makeUIView(context: Context) -> UISearchBar {
        let searchBar = UISearchBar()
        searchBar.delegate = context.coordinator
        return searchBar
    }
    
    
    func updateUIView(_ uiView: UISearchBar, context: Context) {
        print(searchString)
        uiView.text = searchString
    }
}
