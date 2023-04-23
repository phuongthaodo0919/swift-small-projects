//
//  ContentView.swift
//  Gestures
//
//  Created by Salmdo on 4/21/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var tapped = false
    
    var body: some View {
        VStack {
            Hourse(isTapped: tapped)
                .gesture(TapGesture(count: 2).onEnded({ _ in
                    self.tapped.toggle()
                }))
                .padding()
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
