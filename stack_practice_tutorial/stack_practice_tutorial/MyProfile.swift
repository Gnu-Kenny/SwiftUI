//
//  MyProfile.swift
//  stack_practice_tutorial
//
//  Created by 박근우 on 2021/04/12.
//

import SwiftUI

struct MyProfile:View{
    
    @Binding var isNavigationBarHidden: Bool
    //인자 역할: Mylist 인스턴스 생성할때 매개 변수를 넣겠다.
    init(isNavigationBarHidden: Binding<Bool> = .constant(false)){ // Binding.constant
        
        //바인딩에 관한 것
        _isNavigationBarHidden = isNavigationBarHidden
    }
    
    //이전 화면에서 네비게이션뷰를 통해 넘어 온다. => 이미 네비게이션뷰로 감싸져있다.
    var body: some View{
            ScrollView{
                        
                VStack{
                    
                    MyCircleImageView(imageString: "Profile")
                        .padding(.vertical, 20)
                    
                    Text("Gnu-Kenny")
                        .font(.system(size: 40))
                        .fontWeight(.bold)
                        .padding(3)
                    
                    Text("Click the below button!")
                        .font(.system(size:25))
                        .fontWeight(.bold)
                        .padding(.bottom, 20)
                    
                    HStack(spacing: 30){
                        NavigationLink(
                            destination: MyWebview(urlToLoad:"https://github.com/Gnu-Kenny")
                                .edgesIgnoringSafeArea(.all)
                        ){
                            Text("Github")
                                .font(.system(size: 30))
                                .foregroundColor(.white)
                                .fontWeight(.heavy)
                                .padding(10)
                                .background(Color.black)
                                .cornerRadius(15)
                                .shadow(color:Color.gray,radius: 15, x:5,y:5)
                        }
                        NavigationLink(
                            destination: MyWebview(urlToLoad:"https://velog.io/@qkr0677")
                                .edgesIgnoringSafeArea(.all)
                        ){
                            Text("Velog")
                                .font(.system(size: 30))
                                .foregroundColor(.white)
                                .fontWeight(.heavy)
                                .padding(10)
                                .padding(.horizontal,10)
                                .background(Color.green)
                                .cornerRadius(15)
                                .shadow(color:Color.gray,radius: 15, x:5,y:5)
                        }
                        
                    } // HStack
                    .frame(maxWidth: .infinity)
                    
                } // VStack
             
            } //scrollView
            .navigationTitle("My Profile")
            .navigationBarItems(trailing:
                NavigationLink(destination:
                                Text("설정 화면입니다.")
                                .font(.largeTitle)
                                .fontWeight(.black)
                ){
                    Image(systemName: "gear")
                        .font(.largeTitle)
                        .foregroundColor(.black)
                }
            )
            .onAppear{
                self.isNavigationBarHidden = false
            }
            
      
        
    }
}


struct MyProfile_Previews:PreviewProvider{
    static var previews: some View{
        MyProfile()
    }
}
