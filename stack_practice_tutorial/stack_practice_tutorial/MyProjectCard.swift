//
//  MyProjectCard.swift
//  stack_practice_tutorial
//
//  Created by 박근우 on 2021/04/10.
//

import SwiftUI

struct MyProjectCard: View{
    var body: some View{
        VStack(alignment: .leading, spacing:0){
            Rectangle().frame(height: 0) //원을 왼쪽에 두기 위함
            Text("박근우 클론 프로젝트")
                .font(.system(size: 23))
                .fontWeight(.black)
                .padding(.bottom,5)
                
            Text("10 AM - 11 AM")
                .foregroundColor(.secondary)
                
            Spacer().frame(height:20)
            HStack{
                Image("1")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Circle()
                            .stroke(lineWidth: 5)
                            .foregroundColor(Color.red))
                Image("2")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                Image("3")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                Spacer()
                
                Text("확인")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 80)
                    .background(Color.blue)
                    .cornerRadius(20)
                    .frame(width: 20)
                    .padding(.trailing, 15)
            }
        }
        .padding(30)
        .background(Color.yellow)
        .cornerRadius(20)
        
    }
}


struct MyProjectCard_Previews: PreviewProvider{
    static var previews: some View{
        MyProjectCard()
    }
}
