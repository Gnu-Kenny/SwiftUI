//
//  ContentView.swift
//  TextInput_SwiftUI
//
//  Created by 박근우 on 2021/05/03.
//

import SwiftUI

struct ContentView: View {
    @State private var inputValue:String = ""
    @State private var inputPassword:String = ""
    var body: some View {
        GeometryReader{ geometry in
            VStack(spacing:10){
                TextField("아이디를 입력하시오", text: $inputValue )
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .border(Color(UIColor.separator))
                    .frame(width:geometry.size.width/10*9, height: 10)
                SecureField("패스워드를 입력하시오", text: $inputPassword)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .border(Color(UIColor.separator))
                    .frame(width:geometry.size.width/10*9, height: 10)
                
                Text("비밀번호: \(inputPassword)")
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
