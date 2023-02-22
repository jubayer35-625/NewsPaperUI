//
//  StatusBarControls.swift
//  UIdemo
//
//  Created by Md Jubayer Hossain on 21/2/23.
//

import SwiftUI

struct StatusBarControls: View {
    @State private var hideStatusBar = false

        var body: some View {
            Button("Toggle Status Bar") {
                withAnimation {
                    hideStatusBar.toggle()
                }
            }
            .statusBar(hidden: hideStatusBar)
        }
}

struct StatusBarControls_Previews: PreviewProvider {
    static var previews: some View {
        StatusBarControls()
    }
}
