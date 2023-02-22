//
//  PageViews.swift
//  UIdemo
//
//  Created by Md Jubayer Hossain on 21/2/23.
//

import SwiftUI

struct PageViews: View {
    var body: some View {
         TabView {
             Text("First")
             Text("Second")
             Text("Third")
             Text("Fourth")
         }
         
         .tabViewStyle(.page)
         .indexViewStyle(.page(backgroundDisplayMode: .always))
     }
}

struct PageViews_Previews: PreviewProvider {
    static var previews: some View {
        PageViews()
    }
}
