//
//  MyZStack.swift
//  Stacks_tutorial
//
//  Created by 박근우 on 2021/04/09.
//

import SwiftUI

struct MyZStack: View{
    var body: some View{
        ZStack{
            Rectangle()
                .frame(width: 50, height: 50)
                .foregroundColor(Color.yellow)
                .zIndex(2)
                .offset(y:100)
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.red)
                .zIndex(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
            
            Rectangle()
                .frame(width: 150, height: 150)
                .foregroundColor(Color.blue)
                .zIndex(0)

        }
    }
}

struct MyZStack_Preivew: PreviewProvider{
    static var previews: some View{
        MyZStack()
    }
}
