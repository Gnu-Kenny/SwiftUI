//
//  MyVStack.swift
//  Stacks_tutorial
//
//  Created by 박근우 on 2021/04/09.
//

import SwiftUI

struct MyVStack: View{
    var body: some View{
        VStack(alignment: .trailing,spacing: 0){
            
//            Spacer() //위아리로 균등하게 공간 들어감
            
            Divider() //???
                .opacity(0)
            
//            Rectangle()
//                .frame(height:1)
            
            Text("글자")
                .font(.system(size: 30))
                .fontWeight(.heavy)
            
            
            Rectangle() // frame이 적용된 상태
                .frame(width: 100, height: 100)
                .foregroundColor(Color.red)
            
            Rectangle() // frame이 적용된 상태
                .frame(width: 100, height: 100)
                .foregroundColor(Color.yellow)
            
            Rectangle() // frame이 적용된 상태
                .frame(width: 100, height: 100)
                .foregroundColor(Color.blue)
            
            
        }// VStack
        .frame(width: 300)
        .background(Color.green)
//        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct MyVStack_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MyVStack()
        }
    }
}
