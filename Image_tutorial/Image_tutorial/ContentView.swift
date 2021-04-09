//
//  ContentView.swift
//  Image_tutorial
//
//  Created by 박근우 on 2021/04/09.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                CircleImageView()
                
                HStack{
                    //종착지
                    NavigationLink(destination: MyWebview(urlToLoad: "https://github.com/Gnu-Kenny")
                                    .edgesIgnoringSafeArea(.all)){
                        Text("깃허브보러 가기")
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.red)
                            .cornerRadius(20)
                    }
                    NavigationLink(destination: MyWebview(urlToLoad: "https://velog.io/@qkr0677")
                                    .edgesIgnoringSafeArea(.all)){
                        Text("블로그보러 가기")
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.orange)
                            .cornerRadius(20)
                    }
                    
                    
                } //HStack
                .padding(50)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
