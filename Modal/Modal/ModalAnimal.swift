//
//  ModalAnimal.swift
//  Modal
//
//  Created by Salmdo on 4/23/23.
//

import SwiftUI
import Foundation


struct ModalAnimal: View {
    let animals = ["🐤","🐣", "🦁","🙊","🐹"]
    @State var isPresent: Bool
    @State var chooseObj: String
    @State var countryEntered: String

    init(){
        isPresent = false
        chooseObj = ""
        countryEntered = ""
    }
    
    var body: some View {
        List{
            Text("Entered: \(countryEntered)")
                .font(.custom("Arial", size: 20))
            ForEach(0..<animals.count) { i in
                HStack {
                    Text(animals[i])
                    Text("Animal at \(i)")
                }.onTapGesture {
                    self.chooseObj = animals[i]
                    self.isPresent.toggle()
                }
            }
        }.sheet(isPresented: $isPresent) {
            AnimalDetails(animal: chooseObj, country: $countryEntered, isPresent: $isPresent)
        }
    }
}

struct ModalAnimal_Previews: PreviewProvider {
    static var previews: some View {
        ModalAnimal()
    }
}
