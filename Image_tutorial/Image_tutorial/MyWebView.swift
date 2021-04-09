//
//  MyWebView.swift
//  Image_tutorial
//
//  Created by 박근우 on 2021/04/09.
//

import SwiftUI
import WebKit


// 1. Info.plist에서 인터넷 사용 허용 허가 방법
// App transport Security Settings 추가 -> Allow Arbitrary Loads : YES

//uikit의 uiview를 사용할 수 있도록 한다.
// UIViewControllerRepresentable

struct MyWebview: UIViewRepresentable {
    
    var urlToLoad: String
    
    // UI View 만들기
    func makeUIView(context: Context) -> WKWebView {
        
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }   //인자로 받은 문자열값이 비어있다면 WKWebView 반환
        
        //웹뷰 인스턴스 생성
        let webview = WKWebView()
        
        // 웹뷰를 로드한다.
        //webview.load(URLRequest(url: URL(string: urlToLoad)))
        webview.load(URLRequest(url: url))
        
        return webview
    }
    
    // 업데이트 UI View : SwiftUI가 뷰를 다시 그릴떄 동작하도록함
    func updateUIView(_ uiView: WKWebView, context:
    UIViewRepresentableContext<MyWebview>) {
        
    }
}

struct MyWebview_Previews: PreviewProvider {
    static var previews: some View{
        MyWebview(urlToLoad: "https://www.naver.com")
    }
}
