//
//  CameraView.swift
//  Camera-SwiftUI
//
//  Created by Gianluca Orpello on 27/02/24.
//

import SwiftUI

struct CameraView: View {
    
    @Binding var image: CGImage?
    
    var body: some View {
        GeometryReader { geometry in
            if let image = image {
                Image(decorative: image, scale: 1)
                    .resizable()
                    .scaledToFit()
                    .frame(width: geometry.size.width,
                           height: geometry.size.height)
            } else {
                ContentUnavailableView("Camera feed interrupted", systemImage: "xmark.circle.fill")
                                        .frame(width: geometry.size.width,
                           height: geometry.size.height)
            }
        }
    }
}

#Preview {
    CameraView(image: .constant(nil))
}
