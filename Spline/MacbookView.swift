//
//  DigitalPass3dView.swift
//  Spline
//
//  Created by João Bruno Rodrigues on 31/05/24.
//

import SplineRuntime
import SwiftUI

struct MacbookView: View {
    var body: some View {
        VStack {
            Macbook3dView()
//                .background(.purple.quinary)
                .frame(height: 400)
                .ignoresSafeArea()
            
            VStack(spacing: 12) {
                Text("Build Your Brand")
                    .font(.title.bold())
                
                Text("Stay up to date with all your social media plataforms in on simple app.")
                    .foregroundStyle(.secondary)
            }
            .padding(.horizontal)
            
            Spacer()
            
            Button("Get Started") {
                
            }
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            
            Spacer()
        }
    }
}

#Preview {
    MacbookView()
}


struct Macbook3dView: View {
    var body: some View {
        // fetching from cloud
        let url = URL(string: "https://build.spline.design/uHpO7OCcBqqoqnJeSsBL/scene.splineswift")!

        // // fetching from local
        // let url = Bundle.main.url(forResource: "scene", withExtension: "splineswift")!

        try? SplineView(sceneFileURL: url).ignoresSafeArea(.all)
    }
}
