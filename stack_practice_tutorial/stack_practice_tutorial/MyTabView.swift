//
//  MyTabView.swift
//  stack_practice_tutorial
//
//  Created by 박근우 on 2021/04/16.
//

import SwiftUI

struct MyTabView : View {
    var body: some View{
        let colorList:[Color] = [.red,.green,.blue]
        let imageList:[String] = ["airplane","car.fill","flame.fill"]
        TabView{
            
            ForEach(0...2, id: \.self){ index in //\.self 제시된 인덱스에 따라 고유하게 식별된 값을 가진다.
                MyView(title: "\(index+1)번", bgColor: colorList[index])
                    .tabItem{
                        Image(systemName: imageList[index])
                        Text("\(index+1)번")
                            
                    }
                   .tag(index)
            }
        }
    }
}


struct MyTabview_Previews:PreviewProvider {
    static var previews: some View{
        MyTabView()
    }
}
