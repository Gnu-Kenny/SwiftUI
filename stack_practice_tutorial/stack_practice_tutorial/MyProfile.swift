//
//  MyProfile.swift
//  stack_practice_tutorial
//
//  Created by 박근우 on 2021/04/12.
//

import SwiftUI

struct MyProfile:View{
    var body: some View{
        NavigationView{
//            NavigationLink(
//                destination: Text("넘겨진 화면입니다")){
//                Image(systemName: "gear")
//                    .font(.largeTitle)
//                    .foregroundColor(Color.black)
//            }.frame(maxWidth: .infinity, alignment: .trailing)
            ScrollView{
                    
                        VStack{
                            
                            Image("Profile")
                                .resizable()
                                .frame(width: 200, height: 200)
                                .clipShape(Circle())
                                .shadow(color:Color.gray,radius: 15, x:5,y:5)
                                .overlay(
                                    Circle()
                                        .stroke(Color.purple, lineWidth: 10)
                                )
                                .padding()
                            
                            Text("Gnu-Kenny")
                                .font(.system(size: 40))
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .padding(3)
                            
                            Text("Click the below button!")
                                .font(.system(size:25))
                                .fontWeight(.bold)
                                .padding(.bottom, 20)
                            
                            HStack(spacing: 30){
                                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                    Text("Github")
                                        .font(.system(size: 30))
                                        .foregroundColor(.white)
                                        .fontWeight(.heavy)
                                        .padding(10)
                                        .background(Color.black)
                                        .cornerRadius(15)
                                        .shadow(color:Color.gray,radius: 15, x:5,y:5)
                                })
                                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                    Text("Velog")
                                        .font(.system(size: 30))
                                        .foregroundColor(.white)
                                        .fontWeight(.heavy)
                                        .padding(10)
                                        .padding(.horizontal,10)
                                        .background(Color.green)
                                        .cornerRadius(15)
                                        .shadow(color:Color.gray,radius: 15, x:5,y:5)
                                })
                                
                            }
                            .navigationBarTitle("My Profile")
                            
                            //.navigationTitle("My Profile")
                            //
                         
                            
                        } // VStack
                }
            
        }
        
        
    }
}


struct MyProfile_Previews:PreviewProvider{
    static var previews: some View{
        MyProfile()
    }
}
