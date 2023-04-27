//
//  UserView.swift
//  Camera.Swift
//
//  Created by Salmdo on 4/25/23.
//

import SwiftUI

struct UserView: View {
    @ObservedObject var userModel = ToggleModal()
    
    var body: some View {
        VStack() {
            Toggle(isOn: $userModel.isOn) {
                Text("Toggle")
            }
        }.padding()
        
        
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
