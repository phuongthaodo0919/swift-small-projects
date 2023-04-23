//
//  NotificationSetting.swift
//  Forms
//
//  Created by Salmdo on 4/22/23.
//

import SwiftUI

struct NotificationSetting: View {
    var imageList: [String] = ["image1", "image2", "image3"]
    
    var body: some View {
        NavigationView {
            Form{
                Section {
                    NavigationLink {
                        Text("Show Preview")
                    } label: {
                        HStack{
                            Text("Show Previews")
                            Spacer()
                            Text("Always")
                        }
                    }
                }
                
                Section {
                    NavigationLink(destination: Text("Suggestions")) {
                        Text("Siri Suggestions")
                    }
                } header: {
                    Text("You received this message because this email address of your account").textCase(.none).lineLimit(nil)
                }
                
                Section {
                    ForEach(imageList, id: \.self) { image in
                        NotificationStyleCell(imageName: image)
                    }

                } header: {
                    VStack(alignment: .leading) {
                        Text("You received this message because this email address of your account").textCase(.none)
                        Text("Notification Style").padding(.top,5)
                    }
                    
                }
                
               

            }
            .navigationBarTitle("Navigation", displayMode: .inline)
        }
    }
}

struct NotificationSetting_Previews: PreviewProvider {
    static var previews: some View {
        NotificationSetting()
    }
}
