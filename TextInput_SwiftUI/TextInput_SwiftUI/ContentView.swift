//
//  ContentView.swift
//  TextInput_SwiftUI
//
//  Created by 박근우 on 2021/05/03.
//

import SwiftUI

struct ContentView: View {
    @State private var username:String = ""
    @State private var password:String = ""
    var body: some View {
        GeometryReader{ geometryProxy in
            VStack(spacing:10){
                HStack{
                    TextField("아이디를 입력하시오", text: $username )
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                        .border(Color(UIColor.separator))
                    Button(action: {
                        self.username = ""
                    }, label: {
                        if(self.username.count > 0){
                            Image(systemName: "multiply.circle.fill")
                                .font(.system(size: 25))
                                .foregroundColor(.secondary)
                        }
                        
                    })
                }
                HStack{
                    SecureField("패스워드를 입력하시오", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                        .border(Color(UIColor.separator))
                    Button(action: {
                        self.password = ""
                    }, label: {
                        if(self.password.count > 0){
                            Image(systemName: "multiply.circle.fill")
                                .font(.system(size: 25))
                                .foregroundColor(.secondary)
                        }
                    })
                }
                
                
                Text("비밀번호: \(password)")
            }.padding()
            .position(x:geometryProxy.size.width/2, y:geometryProxy.size.height/2)
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
