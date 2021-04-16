//
//  MyView.swift
//  stack_practice_tutorial
//
//  Created by 박근우 on 2021/04/16.
//

import SwiftUI

struct MyView:View{
    var title:String
    var bgColor:Color
    var body: some View{
        ZStack{
            bgColor
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Text(title)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(.white)
        }
    }
}


struct MyView_Previews:PreviewProvider{
    static var previews: some View{
        MyView(title: "마이뷰", bgColor: Color.yellow)
    }
}
