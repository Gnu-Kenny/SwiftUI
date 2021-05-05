//
//  SolidPopupMessage.swift
//  Toast_Popup_tutorial
//
//  Created by 박근우 on 2021/05/05.
//

import SwiftUI
import ExytePopupView

struct SolidPopupMessage:View {
    
    @Binding var firstButtonPopup: Bool
    @Binding var secondButtonPopup: Bool
    
//    var buttonTitle : String
//    var buttonColor : Color
//    var icon : String
//    var messageTitle : String
//    var position : Popup<SolidPopupMessage>.Position
    
    var body: some View{
        Button(action: {
            firstButtonPopup = true
        }, label: {
            Text("BottomSolidMessage")
                .padding()
                .foregroundColor(Color.white)
                .background(Color.purple)
                .cornerRadius(10)
        })
        .popup(isPresented: $firstButtonPopup, type: .floater(verticalPadding: 0),autohideIn: 2) {
        
                HStack(spacing:5) {
                    Image(systemName: "pencil.circle.fill")
                        .font(.system(size: 35))
                    VStack(alignment: .leading, spacing: 0){
                        Text("안내 메세지")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        Text("안녕하세요 오늘도 빡코딩 하고 계신가요?")
                        Text("이번시간에는 팝업에 대해 알아보도록 하겠습니다!")
                        Text("asdfasdfasdf")
                            
                    }
                    .font(.system(size:12))
                }
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .background(Color.purple)
        } //popup
    }
}

struct SolidPopupMessage_previews:PreviewProvider{
    static var previews: some View{
        SolidPopupMessage(firstButtonPopup: .constant(false), secondButtonPopup: .constant(false))
    }
}
