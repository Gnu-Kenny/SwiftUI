//
//  MyBlurButtonStyle.swift
//  ButtonStyle_SwiftUI
//
//  Created by 박근우 on 2021/05/02.
//

import SwiftUI

struct MyBlurButtonStyle : ButtonStyle {
    
    var color: Color
    // configuration에 매개 변수 들어오게 됨. 해당하는 스타일로 만들어지는 버튼
    func makeBody(configuration: Configuration) -> some View {
        // label -> 텍스트
        configuration.label
            .padding()
            .font(.system(size:20))
            .foregroundColor(.white)
            .background(color)
            .cornerRadius(15)
            .blur(radius: configuration.isPressed ? 10:0)
    }
}


struct MyBlurButtonStyle_Previews:PreviewProvider {
    static var previews: some View {
        Button(action: {
                print("button clicked!")
            }, label: {
                Text("호호")
            }
        ).buttonStyle(MyBlurButtonStyle(color: Color.black))
    }
}
