//
//  AnimalDetails.swift
//  Modal
//
//  Created by Salmdo on 4/23/23.
//

import SwiftUI

struct AnimalDetails: View {
    var animal: String
    @Binding var country: String
    @Binding var isPresent: Bool
    
    var body: some View {
        Form {
            Section {
                VStack{
                    Text(animal)
                        .font(.custom("Arial", size: 200))
                    TextField("Enter country name", text: $country)
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                        .padding()
                    Button {
                        self.isPresent.toggle()
                    } label: {
                        Text("Submit")
                    }
                    
                }
            }
        }
    }
}

struct AnimalDetails_Previews: PreviewProvider {
    static var previews: some View {
        AnimalDetails(animal: "any", country: .constant("VN"), isPresent: .constant(true))
    }
}
