//
//  MyWebview.swift
//  stack_practice_tutorial
//
//  Created by 박근우 on 2021/04/15.
//

import SwiftUI
import WebKit

//uikit 의 uiview를 사용할 수 있게 한다.
//UIViewControllerRepresentable

struct MyWebview:UIViewRepresentable{
        
    
    var urlToLoad: String
    
    //makeUIView 뷰 객체를 생성하고 초기 상태를 구성한다. 딱 한 번만 호출한다. -> 프로토콜에 의해 강제되는 함수
    func makeUIView(context: Context) -> WKWebView{
        //typealias Context = UIViewRepresentableContext<Self>
        //Typealias : 기존에 선언되어있는 유형에 새로운 유형의 별칭을 사용 -> 코드를 더 읽기 쉽게하기 위한 용도
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        } //인자로 받은 문자열값이 비어있다면 WKWebView 반환
        
        let webview = WKWebView() // 웹뷰 인스턴스 생성
        //웹뷰를 로드
        webview.load(URLRequest(url:url))
        
        return webview
    }
    
    // 지정된 뷰의 상태를 다음의 새 정보로 업데이트함. -> 프로토콜에 의해 강제되는 함수
    func updateUIView(_ uiView: WKWebView, context:
        UIViewRepresentableContext<MyWebview>) {
    }

}

struct MyWebview_Previews:PreviewProvider{
    static var previews: some View{
        MyWebview(urlToLoad: "http://www.google.com")
    }
}
