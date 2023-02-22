//
//  LabeledContentForm.swift
//  UIdemo
//
//  Created by Md Jubayer Hossain on 21/2/23.
//

import SwiftUI

struct LabeledContentForm: View {
    var body: some View {
        Form {
            LabeledContent {
                Text("View More")
            } label: {
                Text("Md.Jubayer Hossain")
                Text("ID: 201-35-625")
                Text("Section: C")
                Text("Daffodil International University")
            }
            
        }
    }
}

struct LabeledContentForm_Previews: PreviewProvider {
    static var previews: some View {
        LabeledContentForm()
    }
}
