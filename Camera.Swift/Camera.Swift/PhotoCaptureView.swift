//
//  PhotoCaptureView.swift
//  Camera.Swift
//
//  Created by Salmdo on 4/23/23.
//

import SwiftUI

struct PhotoCaptureView: View {
    @Binding var showImagePicker: Bool
    @Binding var image: Image?
    
    var body: some View {
        ImagePicker(isShown: $showImagePicker, image: $image)
    }
}

struct PhotoCaptureView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoCaptureView(showImagePicker: .constant(true), image: .constant(Image("")))
    }
}
