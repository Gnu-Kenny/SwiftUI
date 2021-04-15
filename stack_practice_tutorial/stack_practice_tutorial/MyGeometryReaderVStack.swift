//
//  MyGeometryReaderVStack.swift
//  stack_practice_tutorial
//
//  Created by 박근우 on 2021/04/15.
//

import SwiftUI

enum Index {    //Index는 자료형처럼 쓰이게 됨
    case one, two, three
}

struct MyGeometryReaderVStack : View {
    
    @State var index: Index = .one
    
    var body: some View{
        GeometryReader{ geometry in
            VStack{
                Button(action:{
                    // 버튼이 클릭되었을때 로직
                    print("1번 클릭되었습니다")
                    withAnimation{
                        self.index = .one
                    }
                    
                }){
                    Text("1")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width: 100,height: geometry.size.height / 3)
                        .padding(.horizontal, self.index == .one ? 50 : 0)
                        .foregroundColor(.white)
                        .background(Color.red)
                }
                Button(action:{
                    // 버튼이 클릭되었을때 로직
                    print("2번 클릭되었습니다")
                    
                    withAnimation{
                        self.index = .two
                    }
                }){
                    Text("2")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width: 100,height: geometry.size.height / 3)
                        .padding(.horizontal, self.index == .two ? 50 : 0)
                        .foregroundColor(.white)
                        .background(Color.green)
                }
                Button(action:{
                    // 버튼이 클릭되었을때 로직
                    print("3번 클릭되었습니다")
                    
                    withAnimation{
                        self.index = .three
                    }
                }){
                    Text("3")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width: 100,height: geometry.size.height / 3)
                        .padding(.horizontal, self.index == .three ? 50 : 0)
                        .foregroundColor(.white)
                        .background(Color.blue)
                }
                
                
            }.frame(maxWidth:.infinity)
        }
        .background(Color.yellow)
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct MyGeometryReaderVStack_Previews: PreviewProvider{
    static var previews: some View{
        MyGeometryReaderVStack()
    }
}
