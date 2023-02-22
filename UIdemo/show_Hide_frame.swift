//
//  show_Hide_frame.swift
//  UIdemo
//
//  Created by Md Jubayer Hossain on 21/2/23.
//

import SwiftUI

struct show_Hide_frame: View {
    @State private var showingAdvancedOptions = false
        @State private var enableLogging = false

        var body: some View {
            Form {
                Section {
                    Toggle("Show advanced options", isOn: $showingAdvancedOptions.animation())

                    if showingAdvancedOptions {
                        Toggle("Enable logging", isOn: $enableLogging)
                    }
                }
            }
        }
}

struct show_Hide_frame_Previews: PreviewProvider {
    static var previews: some View {
        show_Hide_frame()
    }
}
