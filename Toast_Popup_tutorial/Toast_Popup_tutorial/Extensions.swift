//
//  Extensions.swift
//  Toast_Popup_tutorial
//
//  Created by 박근우 on 2021/05/06.
//

import SwiftUI
//Color의 생성자 메소드인 init로 메소드 명을 정해야 한다.
extension Color {
    init(hexcode: String){
        let scanner = Scanner(string: hexcode)
        var rgbValue: UInt64 = 0
        
        scanner.scanHexInt64(&rgbValue)
        
        let red = (rgbValue & 0xff0000) >> 16
        let green = (rgbValue & 0xff00) >> 8
        let blue = rgbValue & 0xff
        
        self.init(red: Double(red) / 0xff, green: Double(green) / 0xff, blue: Double(blue) / 0xff)
    }
    
}
