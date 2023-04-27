//
//  ToggleModel.swift
//  Camera.Swift
//
//  Created by Salmdo on 4/26/23.
//

import Foundation


class ToggleModal: ObservableObject {
    @Published var isOn: Bool = UserDefaults.standard.bool(forKey: "isOnToggle")
    {
        didSet{
            UserDefaults.standard.set(self.isOn, forKey: "isOnToggle")
        }
    }
    
}
