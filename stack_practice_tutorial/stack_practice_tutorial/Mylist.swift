//
//  Mylist.swift
//  stack_practice_tutorial
//
//  Created by 박근우 on 2021/04/11.
//

import SwiftUI

struct Mylist:View {
    @Binding var isNavigationBarHidden: Bool
    //인자 역할: Mylist 인스턴스 생성할때 매개 변수를 넣겠다.
    init(isNavigationBarHidden: Binding<Bool> = .constant(false)){
        if #available(iOS 14.0, *){
            
        } else {
            UITableView.appearance().tableFooterView = UIView() // ? 기본값을 없앤다는데 뭔말
        }
        UITableView.appearance().separatorStyle = .none // 회색줄(separator 지움)
        
        //바인딩에 관한 것
        _isNavigationBarHidden = isNavigationBarHidden
    }
    
    var body: some View{
//        List{
//            Text("마이리스트")
//            Text("마이리스트")
//            Text("마이리스트")
//
//        }∏
//        List{
//            ForEach(1...10, id: \.self){
//                Text("마이리스트 \($0)")
//            }
//        }
        List{
            Section(
                header:
                    Text("오늘 할일")
                    .font(.headline)
                    .foregroundColor(Color.black)
                ,footer: Text("footer")
            ){
                ForEach(1...3, id: \.self){ itemIndex in
    //                Text("마이리스트 \(itemIndex)")
                    MyCard(icon: "tray.fill", title: "책상 정리하기 \(itemIndex)", start: "10 AM", end: "11 AM", bgColor: Color.blue)
                }
            }
            .listRowInsets(EdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 10)) // 리스트 요소별 간격
            
            Section(header:
                        Text("내일 할일")
                        .font(.headline)
                        .foregroundColor(Color.black)){
                ForEach(1...3, id: \.self){ itemIndex in
        //            Text("마이리스트 \(itemIndex)")
                    MyCard(icon: "tray.fill", title: "책상 정리하기 \(itemIndex)", start: "10 AM", end: "11 AM", bgColor: Color.green)
                }
                
            }
            .listRowInsets(EdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 10)) // 리스트 요소별 간격
            .listRowBackground(Color.yellow) //리스트 색상
            
        }//.listStyle(PlainListStyle()) //리스트 속성 바꾸는 함수 디폴트 PlainListStyle
        .listStyle(GroupedListStyle())
        .navigationBarTitle("내 목록")
        .onAppear{
            self.isNavigationBarHidden = false
        }
        
    }// NavigationView
    
}


//OPT + CMD + P
struct Mylist_Preview:PreviewProvider{
    static var previews: some View{
        Mylist()
    }
}
