//
//  MyButtonStyle.swift
//  ButtonStyle_SwiftUI
//
//  Created by 박근우 on 2021/05/02.
//

import SwiftUI

enum ButtonType {
    case tab
    case long
}

struct MyButtonStyle : ButtonStyle {
    var color : Color
    var type : ButtonType
    // configuration에 매개 변수 들어오게 됨. 해당하는 스타일로 만들어지는 버튼
    func makeBody(configuration: Configuration) -> some View {
        // label -> 텍스트
        configuration.label
            .padding()
            .font(.system(size:20))
            .foregroundColor(.white)
            .background(color)
            .cornerRadius(15)
            .scaleEffect(configuration.isPressed ? 1.3:1.0)
            .onTapGesture {
                if(self.type == .tab) {
                    let haptic = UIImpactFeedbackGenerator(style: .light)
                    haptic.impactOccurred()
                }
            }.onLongPressGesture {
                if(self.type == .long) {
                    let haptic = UIImpactFeedbackGenerator(style: .heavy)
                    haptic.impactOccurred()
                }
            }
        
    }
}




struct MyButtonStyle_Previews:PreviewProvider {
    static var previews: some View {
        Button(action: {
                print("button clicked!")
            }, label: {
                Text("호호")
            }
        ).buttonStyle(MyButtonStyle(color: Color.blue, type: .tab))
    }
}
