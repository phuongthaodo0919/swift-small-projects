//
//  NotificationStyleCell.swift
//  Forms
//
//  Created by Salmdo on 4/22/23.
//

import SwiftUI

struct NotificationStyleCell: View {
    var imageName: String
    var body: some View {
        HStack {
            Image(imageName)
                .resizable()
                .frame(width: 50, height: 50)
            Text("Notification \(imageName)")
            Spacer()
        }
        
    }
}

struct NotificationStyleCell_Previews: PreviewProvider {
    static var previews: some View {
        NotificationStyleCell(imageName: "image1")
    }
}
