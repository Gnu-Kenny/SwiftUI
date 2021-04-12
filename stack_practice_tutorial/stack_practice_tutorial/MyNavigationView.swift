//
//  MyNavigationView.swift
//  stack_practice_tutorial
//
//  Created by 박근우 on 2021/04/12.
//

import SwiftUI

struct MyNavigationView:View {
    var body: some View{
        
        NavigationView{
//            Text("MyNavigationView")
            Mylist()
//                .navigationBarTitle("안녕하세요!") //default large
                .navigationBarTitle("안녕하세요!", displayMode: .automatic)
                .navigationBarItems(leading: Button(action:{
                print("호호")
                    }){
                        Text("호호")
                    }
                    , trailing:
                    NavigationLink(destination:
                                Text("넘어온 화면입니다.")
                    ){
                            Image(systemName: "bookmark.fill") //네비게이션 화면이 보여지는 곳
                                .font(.largeTitle)
                    }
                )
        }
        
    }
}

struct MyNavigationView_Preview:PreviewProvider {
    static var previews: some View{
        MyNavigationView()
    }
}
