//
//  NightShift.swift
//  Forms
//
//  Created by Salmdo on 4/22/23.
//

import SwiftUI

struct NightShift: View {
    @State var isOnToggle: Bool = true
    @State var enableUntilTrm: Bool = false
    @State var temperature: Float = 0.5
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("You received this message because this email address is listed as the recovery email for the Google Account").textCase(.none)) {
                    
                    Toggle(isOn: $isOnToggle) {
                        Text("Scheduled")
                    }
                    
                    NavigationLink(destination: Text("Cliked")) {
                    HStack {
                        VStack{
                            Text("From")
                            Text("To")
                        }
                        Spacer()
                       
                        VStack{
                            Text("Sunset")
                            Text("Sunrise")
                        }.foregroundColor(Color.blue)
                        }
                    }
                }.padding(.top, 20)
                
                Section {
                    Toggle(isOn: $enableUntilTrm) {
                        Text("Manually Enable Until Tomorrow")
                    }
                }
                
                Section(header: Text("Color Temperature")) {
                    HStack{
                        Text("Low warm")
                        Slider(value: $temperature)
                        Text("More warm")
                    }
                }
            }
        }
    }
}

struct NightShift_Previews: PreviewProvider {
    static var previews: some View {
        NightShift()
    }
}
