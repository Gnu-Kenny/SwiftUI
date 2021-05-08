//
//  MyFilteredList.swift
//  Piker_swiftUI_tutorial
//
//  Created by 박근우 on 2021/05/08.
//

import SwiftUI


struct MyFiteredListView: View {
    @State private var selectionValue = 0
    
    var body: some View {
            VStack{
                Text("filteredValue: ")
                    .font(.system(size:25))
                Text("언제 동창?")
                    .font(.system(size:25))
                picker()
                Spacer()
            }
            
            
        
        
        
    }
}

struct MyFiteredListView_Previews: PreviewProvider {
    static var previews: some View {
        MyFiteredListView()
    }
}
