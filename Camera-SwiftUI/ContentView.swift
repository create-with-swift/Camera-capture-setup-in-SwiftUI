//
//  ContentView.swift
//  Camera-SwiftUI
//
//  Created by Gianluca Orpello on 27/02/24.
//

import SwiftUI

struct ContentView: View {
    
    @State
    private var viewModel = ViewModel()
    
    var body: some View {
        CameraView(image: $viewModel.currentFrame)
            .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
