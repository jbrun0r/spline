//
//  OnBoardView.swift
//  Spline
//
//  Created by João Bruno Rodrigues on 30/05/24.
//

import SwiftUI
import SplineRuntime

struct OnBoardView: View {
    var body: some View {
        VStack {
            OnBoard3dView()
                .background(.purple.quinary)
                .frame(height: 500)
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
    OnBoardView()
}

struct OnBoard3dView: View {
    var body: some View {
        
        // fetching from cloud
        let url = URL(string: "https://build.spline.design/e3TPxiCwQZw83h-3fb9S/scene.splineswift")!
        
        // fetching from local
        // let url = Bundle.main.url(forResource: "scene", withExtension: "splineswift")!
        
       try? SplineView(sceneFileURL: url)
    }
}
