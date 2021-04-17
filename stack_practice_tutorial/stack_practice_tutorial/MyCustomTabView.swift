//
//  MyCustomTabView.swift
//  stack_practice_tutorial
//
//  Created by 박근우 on 2021/04/17.
//

import SwiftUI

enum index{
    case zero,one,two
}

struct MyCustomTabView: View{
    @State var selection = 0
    var body: some View{
        let titleList:[String] = ["홈","장바구니","프로필"]
        let colorList:[Color] = [.green,.purple,.blue]
        let imageList:[String] = ["house.fill","cart.fill","person.crop.circle"]
        
        TabView(selection: $selection){
            
            ForEach(0...2, id: \.self){ index in
                MyView(title: titleList[index], bgColor: colorList[index])
                    .tabItem {
                        Image(systemName: imageList[index])
                    }
                    .tag(index)

            }
            
            
        }        .accentColor(colorList[selection])
    }
}

struct MyCustomTabView_Previews:PreviewProvider{
    static var previews: some View{
        MyCustomTabView()
    }
}
