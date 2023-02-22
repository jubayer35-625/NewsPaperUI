//
//  Shapes.swift
//  UIdemo
//
//  Created by Md Jubayer Hossain on 20/2/23.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
//        Circle ()
        //Ellipse ()
        //Capsule (style: circular)
        //Rectangle ()
        RoundedRectangle(cornerRadius: 12)
     
//        .fill (Color.green)
//        .foregroundColor (.pink)
//        .stroke ()
//.stroke (Color.red)
//        .stroke(Color.blue, linewidth: 30)
         
//            .stroke(Color.orange, style:
//        StrokeStyle(lineWidth: 30, lineCap:
//                .round, dash: [35]))
//            .padding(.all, 96.0)
//
//            .trim(from: 0.05, to: 1)
//            .stroke(Color.blue, lineWidth: 10)
            .fill(
               // Color.blue
                Color("CustomColor")
            )
            .shadow(color:Color("CustomColor").opacity(0.5), radius: 10,x: -20,y: -20)
         .frame(width: 200, height: 200)

                    
                    
                    
                    
                    
                    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}
