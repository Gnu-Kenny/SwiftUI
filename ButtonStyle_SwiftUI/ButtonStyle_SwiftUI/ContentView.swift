//
//  ContentView.swift
//  ButtonStyle_SwiftUI
//
//  Created by 박근우 on 2021/05/02.
//

import SwiftUI

struct ContentView: View {
    let generator = UINotificationFeedbackGenerator()
    var body: some View {
        VStack(spacing: 30){
            Button(
                action: {
                print("tap button Clicked!")
                self.generator.notificationOccurred(.success)
            }, label: {
                Text("탭")
                    .fontWeight(.bold)
            }).buttonStyle(MyButtonStyle(color: Color.blue, type: .tab))
            
            Button(
                action: {
                print("long button Clicked!")
                let impactHeavy = UIImpactFeedbackGenerator(style: .heavy)
                impactHeavy.impactOccurred()
            }, label: {
                Text("롱클릭")
                    .fontWeight(.bold)
                    
            }).buttonStyle(MyButtonStyle(color: Color.green, type: .long))
                        
            Button(
                action: {
                print("min button Clicked!")
            }, label: {
                Text("축소 버튼")
                    .fontWeight(.bold)
            }).buttonStyle(MySmallerButtonStyle(color: Color.purple))
            
            Button(
                action: {
                print("spin button Clicked!")
            }, label: {
                Text("회전 버튼")
                    .fontWeight(.bold)
            }).buttonStyle(MyRotateButtonStyle(color: Color.pink))
            
            Button(
                action: {
                print("blur button Clicked!")
            }, label: {
                Text("블러 버튼")
                    .fontWeight(.bold)
            }).buttonStyle(MyBlurButtonStyle(color: .black))
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
