//
//  MyGeometryReader.swift
//  stack_practice_tutorial
//
//  Created by 박근우 on 2021/04/15.
//

import SwiftUI

struct MyGeometryReader: View{
    @State var clickCheck:Array = [false,false,false]
    var body: some View{
        //변수 geometry에 화면 사이즈 저장
        GeometryReader{ Geometry in
            
            VStack(spacing:0){
                Button(action: {
                    self.clickCheck[0].toggle()
                    self.clickCheck[1] = false
                    self.clickCheck[2] = false
                        }, label: {
                    Text("1")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .foregroundColor(.white)
                        .frame(
                            width: Geometry.size.width / 8,
                            height: Geometry.size.height / 3)
                        .background(Color.red)
                        .scaleEffect(clickCheck[0] ? 2:1)
                        .animation(.easeOut)
                })
                Button(action: {
                    self.clickCheck[0] = false
                    self.clickCheck[1].toggle()
                    self.clickCheck[2] = false
                        }, label: {
                    Text("2")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .foregroundColor(.white)
                        .frame(
                            width: Geometry.size.width / 8,
                            height: Geometry.size.height / 3)
                        .background(Color.green)
                        .scaleEffect(clickCheck[1] ? 2:1)
                        .animation(.easeOut)
                })
                Button(action: {
                    self.clickCheck[0] = false
                    self.clickCheck[1] = false
                    self.clickCheck[2].toggle()
                        }, label: {
                    Text("3")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .foregroundColor(.white)
                        .frame(
                            width: Geometry.size.width / 8,
                            height: Geometry.size.height / 3)
                        .background(Color.blue)
                        .scaleEffect(clickCheck[2] ? 2:1)
                        .animation(.easeOut)
                })
                
                    
            } //VStack
            .frame(maxWidth: .infinity)
            //.offset(x:Geometry.size.width / 2 - (Geometry.size.width/8/2))
            
        } .background(Color.yellow)  //geometryreader
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        
    }
}

struct MyGeometryReader_Previews: PreviewProvider{
    static var previews: some View {
        MyGeometryReader()
    }
}
