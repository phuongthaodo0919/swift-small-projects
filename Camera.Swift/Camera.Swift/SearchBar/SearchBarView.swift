//
//  SearchBarView.swift
//  Camera.Swift
//
//  Created by Salmdo on 4/25/23.
//

import SwiftUI

struct SearchBarView: View {
    let nameList = ["Jiji", "KOlo", "Chanpa", "Hujt"]
    
    @State var searchString = ""
    
    var body: some View {
        List {
            SearchBar(searchString: $searchString)

            let names = nameList.filter{searchString.isEmpty ? true : $0.localizedCaseInsensitiveContains(searchString)}
            
            ForEach(names, id: \.self){ name in
                Text(name)
            }
            
            Text("Search String: \(searchString)")
        }
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView()
    }
}
