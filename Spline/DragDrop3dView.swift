//
//  DragDrop3dView.swift
//  Spline
//
//  Created by João Bruno Rodrigues on 31/05/24.
//

import SplineRuntime
import SwiftUI

struct DragDrop3dView: View {
    var body: some View {
        // fetching from cloud
        let url = URL(string: "https://build.spline.design/w7QER8gywawsdJC2oiaU/scene.splineswift")!

        // // fetching from local
        // let url = Bundle.main.url(forResource: "scene", withExtension: "splineswift")!

        try? SplineView(sceneFileURL: url).ignoresSafeArea(.all)
    }
}

#Preview {
    DragDrop3dView()
}
