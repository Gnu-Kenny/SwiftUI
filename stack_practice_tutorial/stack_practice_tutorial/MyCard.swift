//
//  MyCard.swift
//  stack_practice_tutorial
//
//  Created by 박근우 on 2021/04/11.
//

import SwiftUI

struct MyCard: View{
    
    var icon : String
    var title : String
    var start : String
    var end : String
    var bgColor : Color
    
    var body: some View{
        HStack(spacing: 20){ //spacing : 요소간 간격
            Image(systemName: icon)
                .font(.system(size: 40))
                .foregroundColor(.white)
            
            VStack(alignment: .leading,spacing: 0){
                Rectangle().frame(height: 0)
                Text(title)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(.system(size: 23))
                    .foregroundColor(Color.white)
                
                Spacer().frame(height: 5)
                
                Text("\(start)-\(end)")
                    .foregroundColor(Color.white)
            }
            
        }
        .padding(30)
        .background(bgColor)
        .cornerRadius(20)
    }
}

struct MyCard_Preview:PreviewProvider{
    static var previews: some View{
        MyCard(icon: "doc.fill", title: "책읽기",
               start: "1 PM", end: "3 PM", bgColor: Color.green)
    }
}
