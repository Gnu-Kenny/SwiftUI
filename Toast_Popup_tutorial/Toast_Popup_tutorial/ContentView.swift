//
//  ContentView.swift
//  Toast_Popup_tutorial
//
//  Created by 박근우 on 2021/05/04.
//

import SwiftUI
import ExytePopupView



struct ContentView: View {
    @State var firstButtonPopup = false
    @State var secondButtonPopup = false
    @State var thirdButtonPopup = false
    @State var fourthButtonPopup = false
    @State var fifthButtonPopup = false
    var body: some View {
        GeometryReader{ GeometryProxy in
            ZStack{
                VStack(spacing:20) {
                            // your view
                    
                    //first button
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
                                    Text("asdfasdfasdf")                        }
                                .font(.system(size:12))
                            }
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 15)
                            .background(Color.purple)
                            
                    } //popup
                    
                    //second button
                    Button(action: {
                        secondButtonPopup = true
                    }, label: {
                        Text("BottomToastMessage")
                            .padding()
                            .foregroundColor(Color.white)
                            .background(Color.green)
                            .cornerRadius(10)
                    })
                    .popup(isPresented: $secondButtonPopup, type: .toast,autohideIn: 2) {
                        
                        HStack(alignment:.center,spacing:10) {
                                Image("cat")
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                    .cornerRadius(10)
                                VStack(alignment: .leading, spacing: 0){
                                    Text("우리집 고영희씨")
                                        .font(.system(size:15))
                                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    Text("Her name is goyoungHee you want a view to go under the safe area, amke sure you add the .edgesIgnoringSafeArea(.all) modifier")
                                        .font(.system(size:12))
                                    
                                        
                                }
                                .font(.system(size:12))
                        }
                        .foregroundColor(.black)
                        .frame(width: 300, height: 130)
                        .background(Color.green)
                        .cornerRadius(15)
                        .padding(30)
                            
                    } //popup
                    
                    //third button
                    Button(action: {
                        thirdButtonPopup = true
                    }, label: {
                        Text("TopSolidMessage")
                            .padding()
                            .foregroundColor(Color.white)
                            .background(Color.blue)
                            .cornerRadius(10)
                    })
                    .popup(isPresented: $thirdButtonPopup, type: .floater(verticalPadding: 0),position: .top,autohideIn: 2) {
                        
                        HStack {
                                Image("Profile")
                                    .resizable()
                                    .frame(width:60, height:60)
                                    .clipShape(Circle())
                                    .font(.system(size: 35))
                                VStack(alignment: .leading, spacing: 0){
                                    Text("개발하는 정대리님의 메세지")
                                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                        .font(.system(size:15))
                                    Text("안녕하세요 오늘도 빡코딩 하고 계신가요?")
                                    Text("이번시간에는 팝업에 대해 알아보도록 하겠습니다!")
                                    Text("asdfasdfasdf")
                                        
                                }
                                .font(.system(size:12))
                            }
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding(.top, 40)
                            .background(Color.blue)
                            
                            
                    } //popup
                    
                    //fourthbutton
                    Button(action: {
                        fourthButtonPopup = true
                    }, label: {
                        Text("TopToastMessage")
                            .padding()
                            .foregroundColor(Color.white)
                            .background(Color.orange)
                            .cornerRadius(10)
                    })
                    .popup(isPresented: $fourthButtonPopup, type: .toast,position: .top,autohideIn: 2) {
                        
                        HStack(alignment:.center,spacing:10) {
                                Image(systemName: "message.fill")
                                    .font(.system(size:30))
                                VStack(alignment: .leading, spacing: 0){
                                    Text("정대리님의 메세지")
                                        .font(.system(size:18))
                                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                        
                                    
                                        
                                }
                                .font(.system(size:12))
                        }
                        .foregroundColor(.white)
                        .padding(.all,17)
                        .background(Color.orange)
                        .cornerRadius(50)
                        .padding(.top, 40)
                        
                            
                    } //popup
                    
                    //fifth button
                    Button(action: {
                        fifthButtonPopup = true
                    }, label: {
                        Text("BottomToastMessage")
                            .padding()
                            .foregroundColor(Color.white)
                            .background(Color.black)
                            .cornerRadius(10)
                    })
                    .popup(isPresented: $fifthButtonPopup, type: .toast, position: .bottom,autohideIn: 200) {
                        
                        VStack(alignment:.center,spacing:20) {
                                Image("Profile")
                                    .resizable()
                                    .frame(width:80, height:80)
                                    .clipShape(Circle())
                                    .font(.system(size: 35))
                                Text("개발하는 정대리")
                                    .font(.system(size:18))
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                VStack(alignment: .center, spacing: 0){
                                    Text("한국에서 개발자로 살아남기")
                                    Text("예전의 저처럼 프로그래머가 되고 싶지만")
                                    Text("그 길을 몰라 헤매는 분들에게 도움 되고자")
                                    Text("이 채널을 운영하기 시작했습니다.")
                                    Text(" ")
                                    Text("프로그램에 관심 있는 분들이나 취업 준비생 분들께")
                                    Text("조금이나마 도움이 되었으면 합니다.")
                                    Text("화이팅!")
                                    
                                        
                                }
                                .font(.system(size:12))
                        }
                        .foregroundColor(.white)
                        .padding(50)
                        .background(Color.yellow)
                        .cornerRadius(15)
                        .padding(.bottom,GeometryProxy.size.height/2-140)
                        
                            
                    } //popup
                    
                    
                } //vstack
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .position(x:GeometryProxy.size.width/2,y: GeometryProxy.size.height/2)
            }
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
