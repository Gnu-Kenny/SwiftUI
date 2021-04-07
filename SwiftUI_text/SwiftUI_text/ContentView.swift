//
//  ContentView.swift
//  SwiftUI_text
//
//  Created by 박근우 on 2021/04/07.
//

import SwiftUI

struct ContentView: View {
    //dateFormat : 자료형이 DateFormatter인 인스턴스 생성 및 초기화
    static let dateFormat: DateFormatter = {
        let formatter = DateFormatter() //인스턴스 생성 및 초기화
        formatter.dateFormat = "Y년 M월 d일" //Y,M,d,D 값을 문자열에서 읽어내는데 어디서 읽어내는지 모르겠음. dateFormat : !String
//        print("formatter.dateFormat= \(formatter.dateFormat ?? "Error")")
        return formatter
    }()
    
    var today = Date()
    
    var trueOrFalse : Bool = false
    
    var number: Int = 123
    var body: some View {
        VStack{
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
                .tracking(2) // 글자 사이 간격
                
                .font(.system(.largeTitle, design: .rounded)) //폰트 스타일링
                .fontWeight(.medium)
                .multilineTextAlignment(.center) //문단 정렬 default : leading
                .lineLimit(nil) // 라인 제한 디폴트: 멀티라인, trailing == right leading == left
                .lineSpacing(10) // 문장사이 간격
                .truncationMode(.middle) //문장이 길어질경우 아래 문장 잘라서 ... 표시
                .shadow(color: Color.gray,radius: 3, x:10, y: 10)
                
                .padding(.all, 20) // 디폴트 all, 10 //문단과 글자 사이 여백
                .background(Color.yellow)
                .cornerRadius(10)
                
                .padding()  //문단과 문단 사이 여백
                .background(Color.green)
                .cornerRadius(20)
            Text("안녕하세요!")
                .background(Color.gray)
                .foregroundColor(Color.white)
            Text("오늘의 날짜입니다 : \(today, formatter: ContentView.dateFormat)")
            
            Text("참 혹은 거짓 : \(String(trueOrFalse))")
            
            Text("숫자입니다 : \(number)")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
