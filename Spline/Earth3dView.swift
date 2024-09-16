//
//  Eath3dView.swift
//  Spline
//
//  Created by João Bruno Rodrigues on 31/05/24.
//

import SplineRuntime
import SwiftUI

struct Earth3dView: View {
    var body: some View {
        // fetching from cloud
        let url = URL(string: "https://build.spline.design/bygTaO3XKEvycH1WjbJS/scene.splineswift")!

        // // fetching from local
        // let url = Bundle.main.url(forResource: "scene", withExtension: "splineswift")!

        try? SplineView(sceneFileURL: url).ignoresSafeArea(.all)
    }
}

#Preview {
    Earth3dView()
}
