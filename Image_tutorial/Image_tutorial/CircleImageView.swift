//
//  CircleImageView.swift
//  Image_tutorial
//
//  Created by 박근우 on 2021/04/09.
//

import SwiftUI

struct CircleImageView : View {
    var body: some View{
        //sf symbol
//        Image(systemName: "bolt.circle")
//            .font(.system(size:200))
//            .foregroundColor(.yellow)
//            .shadow(color: .gray, radius: 2, x: 2, y: 10)
        Image("myImage")
            .resizable() //크기 맞춤
                .scaledToFill()
                .frame(width: 300, height: 300)
                .clipShape(Circle())
            .shadow(color: .gray, radius: 10, x: 0, y: 10)
                .overlay(
                    Circle()
                    .foregroundColor(.black))
            .opacity(0.7)
                .overlay(
                    Circle().stroke(Color.red, lineWidth: 10)
                        .padding()
                )
                .overlay(
                    Circle().stroke(Color.yellow, lineWidth: 10)
                        .padding(30)
                )
                .overlay(
                    Circle().stroke(Color.blue, lineWidth: 10)
                )
                .overlay(
                    Text("Kenny")
                        .foregroundColor(.white)
                        .font(.system(size: 50))
                        .fontWeight(.bold)
                )
        
                // stroke 윤곽선
            //.aspectRatio(contentMode: .fill)
            //.frame(width: 200 height: 300)
            //.clipped()
            //.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)

    }
}

struct CircleImageView_Previews: PreviewProvider{
    static var previews: some View{
        CircleImageView()
    }
}
