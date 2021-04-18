//
//  QRCodeScannerExampleView.swift
//  QRCode_Reader_SwiftUI_Tutorial
//
//  Created by 박근우 on 2021/04/18.
//
import SwiftUI

struct QRCodeScannerExampleView: View {
    @State var isPresentingScanner = false
    @State var scannedCode: String?

    var body: some View {
        ZStack{
            //QRCode 스캔 되었을때 넘어가는 로직
//                if self.scannedCode != nil {
//                    NavigationLink("Next page", destination: NextView(scannedCode: scannedCode!), isActive: .constant(true)).hidden()
//                }
            //QRCode 스캔 되었을때 넘어가는 로직
            if self.scannedCode != nil {
                MyWebview(urlToLoad: self.scannedCode!)
            }else{
                MyWebview(urlToLoad: "https://www.naver.com")
            }
            VStack{
                Spacer()
                Button(action: {
                    self.isPresentingScanner = true
                }){
                    Text("로또번호확인")
                        .font(.system(size:20))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding()
                        .background(Color.yellow)
                        .cornerRadius(12)
                        .overlay(
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(lineWidth: 5)
                        )
                }
                .sheet(isPresented: $isPresentingScanner) {
                    self.scannerSheet
                }
                Spacer().frame(height: 30)
            }
            
        }
                
    }

    var scannerSheet : some View {
        ZStack{
            
            CodeScannerView(
                codeTypes: [.qr],
                completion: { result in
                    if case let .success(code) = result {
                        self.scannedCode = code
                        self.isPresentingScanner = false
                    }
                }
            )
            
            QRCodeGuideLineView()
        }
        
    }
}


struct QRCodeScannerExampleView_Previews : PreviewProvider{
    static var previews: some View{
        QRCodeScannerExampleView()
    }
}
