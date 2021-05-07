//
//  ContentView.swift
//  Piker_swiftUI_tutorial
//
//  Created by 박근우 on 2021/05/06.
//

import SwiftUI

struct ContentView: View {
    @State private var selectionValue = 0
    let selectedColorName : [String] = ["레드","그린","블루"]
    func changeColor(index:Int) -> Color {
        switch index {
        case 0:
            return Color.red
        case 1:
            return Color.green
        case 2:
            return Color.blue
        default:
            return Color.red
        }
    }
    var body: some View {
        VStack{
            Circle()
                .frame(width:50,height:50)
                .foregroundColor(self.changeColor(index: selectionValue))
                .font(.system(size:40))
            Text("세그먼트 value : \(selectionValue)")
            Text("선택된 색깔: \(selectedColorName[selectionValue])")
            VStack(spacing:50){
                Picker("피커", selection: $selectionValue, content: {
                    Text("레드").tag(0)
                    Text("그린").tag(1)
                    Text("블루").tag(2)
                }).pickerStyle(SegmentedPickerStyle())
                Picker("피커", selection: $selectionValue, content: {
                    Text("레드").tag(0)
                    Text("그린").tag(1)
                    Text("블루").tag(2)
                })
                .frame(width: 80, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .clipped()
                .border(self.changeColor(index: selectionValue), width: 10)
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
