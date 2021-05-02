//
//  MyButtonStyle.swift
//  ButtonStyle_SwiftUI
//
//  Created by 박근우 on 2021/05/02.
//

import SwiftUI

struct MyButtonStyle : ButtonStyle {
    
    // configuration에 매개 변수 들어오게 됨. 해당하는 스타일로 만들어지는 버튼
    func makeBody(configuration: Configuration) -> some View {
        // label -> 텍스트
        configuration.label
            .padding()
            .font(.system(size:20))
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(15)
            .scaleEffect(configuration.isPressed ? 1.3:1.0)
        
    }
}

struct MyLongButtonStyle : ButtonStyle {
    // configuration에 매개 변수 들어오게 됨. 해당하는 스타일로 만들어지는 버튼
    func makeBody(configuration: Configuration) -> some View {
        // label -> 텍스트
        configuration.label
            .padding()
            .font(.system(size:20))
            .foregroundColor(.white)
            .background(Color.green)
            .cornerRadius(15)
            .scaleEffect(configuration.isPressed ? 1.3:1.0)
    }
}

struct MyMinButtonStyle : ButtonStyle {
    // configuration에 매개 변수 들어오게 됨. 해당하는 스타일로 만들어지는 버튼
    func makeBody(configuration: Configuration) -> some View {
        // label -> 텍스트
        configuration.label
            .padding()
            .font(.system(size:20))
            .foregroundColor(.white)
            .background(Color.purple)
            .cornerRadius(15)
            .scaleEffect(configuration.isPressed ? 0.7:1.0)
    }
}

struct MyRotateButtonStyle : ButtonStyle {
    // configuration에 매개 변수 들어오게 됨. 해당하는 스타일로 만들어지는 버튼
    func makeBody(configuration: Configuration) -> some View {
        // label -> 텍스트
        configuration.label
            .padding()
            .font(.system(size:20))
            .foregroundColor(.white)
            .background(Color.red)
            .cornerRadius(15)
            .rotationEffect(configuration.isPressed ? Angle(degrees: 180) : Angle(degrees: 0) )
    }
}

struct MyBlurButtonStyle : ButtonStyle {
    // configuration에 매개 변수 들어오게 됨. 해당하는 스타일로 만들어지는 버튼
    func makeBody(configuration: Configuration) -> some View {
        // label -> 텍스트
        configuration.label
            .padding()
            .font(.system(size:20))
            .foregroundColor(.white)
            .background(Color.black)
                .blur(radius: configuration.isPressed ? 3.0 : 0.0)
            .cornerRadius(15)
            
    }
}


struct MyButtonStyle_Previews:PreviewProvider {
    static var previews: some View {
        Button(action: {
                print("button clicked!")
            }, label: {
                Text("호호")
            }
        ).buttonStyle(MyRotateButtonStyle())
    }
}
