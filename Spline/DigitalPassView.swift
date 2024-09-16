//
//  DigitalPass3dView.swift
//  Spline
//
//  Created by João Bruno Rodrigues on 31/05/24.
//

import SplineRuntime
import SwiftUI

struct DigitalPassView: View {
    var body: some View {
        VStack {
            DigitalPass3dView()
                .frame(height: 500)
                .ignoresSafeArea()
            
            VStack(spacing: 12) {
                Text("Discover Your Pass")
                    .font(.title.bold())
                
                Text("Access all your exclusive events and perks with just one tap.")
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
    DigitalPassView()
}


struct DigitalPass3dView: View {
    var body: some View {
        // fetching from cloud
        let url = URL(string: "https://build.spline.design/GavM7t5K0dXqfHiiNQ1m/scene.splineswift")!

        // // fetching from local
        // let url = Bundle.main.url(forResource: "scene", withExtension: "splineswift")!
        ZStack {
            try? SplineView(sceneFileURL: url).ignoresSafeArea(.all)
            Rectangle()
                .fill(.black)
                .frame(height: 40)
                .offset(CGSize(width: 200, height: 210.0))
        }
    }
}
