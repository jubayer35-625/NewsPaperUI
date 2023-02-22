//
//  Enable_Disable.swift
//  UIdemo
//
//  Created by Md Jubayer Hossain on 21/2/23.
//

import SwiftUI

struct Enable_Disable: View {
    @State private var agreedToTerms = false

       var body: some View {
           Form {
               Section {
                   Toggle("Agree to terms and conditions", isOn: $agreedToTerms)
               }

               Section {
                   Button("Continue") {
                       print("Thank you!")
                   }
                   .disabled(agreedToTerms == false)
               }
           }
       }
}

struct Enable_Disable_Previews: PreviewProvider {
    static var previews: some View {
        Enable_Disable()
    }
}
