//
//  QRCodeGuideLineView.swift
//  QRCode_Reader_SwiftUI_Tutorial
//
//  Created by 박근우 on 2021/04/18.
//
import SwiftUI

struct QRCodeGuideLineView:View {
    var body : some View{
        GeometryReader{ geometryProxy in
            RoundedRectangle(cornerRadius: 20)
                .stroke(style: StrokeStyle(lineWidth: 10, dash: [11]))
                .frame(width: geometryProxy.size.width / 2, height: geometryProxy.size.height / 3)
                .foregroundColor(.yellow)
                .offset(x:geometryProxy.size.width / 4, y:geometryProxy.size.height / 3)
        }
    }
}

struct QRCodeGuideLineView_Previews:PreviewProvider {
    static var previews: some View{
        QRCodeGuideLineView()
    }
}
