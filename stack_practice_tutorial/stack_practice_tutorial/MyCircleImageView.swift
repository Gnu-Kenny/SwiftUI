//
//  MyCircleImageView.swift
//  stack_practice_tutorial
//
//  Created by 박근우 on 2021/04/15.
//

import SwiftUI

struct MyCircleImageView : View {
    
    var imageString: String
    
    var body: some View{

        Image(imageString)
            .resizable() //크기 맞춤
                .scaledToFill()
                .frame(width: 250, height: 250)
                .clipShape(Circle())
                .shadow(color: .gray, radius: 10, x: 0, y: 10)
                .overlay(
                    Circle().stroke(LinearGradient(gradient: Gradient(colors: [.orange, .red]), startPoint: .bottomLeading, endPoint: .topTrailing), lineWidth: 10)
                )
    }
}

struct CircleImageView_Previews: PreviewProvider{
    static var previews: some View{
        MyCircleImageView(imageString: "Profile")
    }
}
