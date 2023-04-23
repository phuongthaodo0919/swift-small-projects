//
//  Hourse.swift
//  Gestures
//
//  Created by Salmdo on 4/21/23.
//

import SwiftUI

struct Hourse: View {
    var isTapped: Bool
    @GestureState private var magnifyBy = 1.0

       var magnification: some Gesture {
           MagnificationGesture()
               .updating($magnifyBy) { currentState, gestureState, transaction in
                   gestureState = currentState
               }
       }
    
    var body: some View {
        VStack {
            Image("searchimg")
                .resizable()
                .scaleEffect(magnifyBy)
                .frame(width: 300, height:300)
                .gesture(magnification)

            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
       
    }
}

struct Hourse_Previews: PreviewProvider {
    static var previews: some View {
        Hourse(isTapped: true)
    }
}
