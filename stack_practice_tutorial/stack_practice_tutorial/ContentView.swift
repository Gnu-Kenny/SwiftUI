//
//  ContentView.swift
//  stack_practice_tutorial
//
//  Created by 박근우 on 2021/04/10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            
            VStack(alignment: .leading, spacing: 0){
                
                HStack{
                    Image(systemName: "line.horizontal.3")
                        .font(.largeTitle)
                    Spacer()
                    Image(systemName: "person.crop.circle.fill")
                        .font(.largeTitle)
                }
                .padding(20)
                Text("박근우 할 일 목록")
                    .font(.system(size:40))
                    .fontWeight(.black)
                    .padding(.horizontal, 20)
                ScrollView{
                    VStack{
                        MyProjectCard()
                        MyBasicCard() //커스텀으로 뷰를 만들기 어려움 -> 매개변수 활용하려함
                        MyCard(icon: "tray.fill", title: "책상 정리하기", start: "10 AM", end: "11 AM", bgColor: Color.blue)
                        MyCard(icon: "tv", title: "강의 보기", start: "8 AM", end: "9 AM", bgColor: Color.orange)
                        MyCard(icon: "play.rectangle", title: "유튜브", start: "12 PM", end: "2 PM", bgColor: Color.red)
                    }.padding()
                }
            }
            .padding(.top, 20)
            .padding(.horizontal, 20)
            
            Circle()
                .foregroundColor(Color.yellow)
                .frame(width: 60, height: 60)
                .overlay(
                    Image(systemName: "plus")
                        .font(.system(size:30))
                        .foregroundColor(.white)
                )
                .padding(10)
                .shadow(radius: 20)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
