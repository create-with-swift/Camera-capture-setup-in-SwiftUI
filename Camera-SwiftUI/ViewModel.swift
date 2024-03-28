//
//  ViewModel.swift
//  Camera-SwiftUI
//
//  Created by Gianluca Orpello on 27/02/24.
//

import Foundation
import CoreImage

@Observable
class ViewModel {
    
    var currentFrame: CGImage?
    
    private let cameraManager = CameraManager()
    
    init() {
        Task {
            await handleCameraPreviews()
        }
    }
    
    func handleCameraPreviews() async {
        for await image in cameraManager.previewStream {
            Task { @MainActor in
                currentFrame = image
            }
        }
    }
}

