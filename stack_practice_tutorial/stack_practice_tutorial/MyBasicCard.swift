//
//  MyBasicCard.swift
//  stack_practice_tutorial
//
//  Created by 박근우 on 2021/04/10.
//

import SwiftUI

struct MyBasicCard: View{
    var body: some View{
        HStack(spacing: 20){ //spacing : 요소간 간격
            Image(systemName: "flag.fill")
                .font(.system(size: 40))
                .foregroundColor(.white)
            
            VStack(alignment: .leading,spacing: 0){
                Rectangle().frame(height: 0)
                Text("하하하")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(.system(size: 23))
                    .foregroundColor(Color.white)
                
                Spacer().frame(height: 5)
                
                Text("하하하")
                    .foregroundColor(Color.white)
            }
            
        }
        .padding(30)
        .background(Color.purple)
        .cornerRadius(20)
    }
}

struct MyBasicCard_Preview:PreviewProvider{
    static var previews: some View{
        MyBasicCard()
    }
}
