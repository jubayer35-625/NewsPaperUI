//
//  Picker.swift
//  UIdemo
//
//  Created by Md Jubayer Hossain on 20/2/23.
//

import SwiftUI

struct PickerDemo: View {
  @State private var selectedStrength = "Mild"
        let strengths = ["Mild", "Medium", "Mature"]
    
    var body: some View {
       
        NavigationStack {
              Form {
                  Section {
                      Picker("Strength", selection: $selectedStrength) {
                                          ForEach(strengths, id: \.self) {
                                              Text($0)
                                          }
                      }
                                .pickerStyle(.wheel)
                  }
              }
              .navigationTitle("Select your cheese")
          }
        
    }
}

struct Picker_Previews: PreviewProvider {
    static var previews: some View {
        PickerDemo()
    }
}
