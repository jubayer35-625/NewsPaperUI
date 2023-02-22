//
//  ColumnExample.swift
//  UIdemo
//
//  Created by Md Jubayer Hossain on 21/2/23.
//

import SwiftUI

struct ColumnExample: View {
    var body: some View {
       
        VStack {
            Group {
                Text("DS Major").fontWeight(.bold)
                Text("Jubayer")
                Text("a")
                Text("b")
                Text("c")
                Text("d")
            }

            Group {
                Text("Non Major").fontWeight(.bold)
                Text("Q")
                Text("R")
                Text("S")
                Text("T")
            }
        }
        
        
        
    }
}

struct ColumnExample_Previews: PreviewProvider {
    static var previews: some View {
        ColumnExample()
    }
}
