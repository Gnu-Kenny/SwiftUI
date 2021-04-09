//
//  MyHStack.swift
//  Stacks_tutorial
//
//  Created by 박근우 on 2021/04/09.
//

import SwiftUI

struct MyHStack: View{
    var body: some View{
        HStack(alignment: .center){
//            Divider()
            
//            Rectangle()
//                .frame(width: 100)
//                .foregroundColor(.red)
//            Rectangle()
//                .frame(width: 100, height: 100)
//                .foregroundColor(.red)
            
            Image(systemName: "flame.fill")
                .foregroundColor(.white)
                .font(.system(size: 70))
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(.yellow)
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(.blue)
            
        }
        .padding()
        .background(Color.green)
    }
}

struct MyHStack_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MyHStack()
        }
    }
}
