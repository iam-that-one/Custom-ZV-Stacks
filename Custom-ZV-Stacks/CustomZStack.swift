//
//  CustomZStack.swift
//  Custom-ZV-Stacks
//
//  Created by Abdullah Alnutayfi on 23/07/2021.
//

import SwiftUI

struct CustomZStack<Content: View> : View{
    let screenColor : UIColor
    let alignment : Alignment
    let content : Content
    init(screenColor : UIColor = .white,alignment: Alignment = .center,@ViewBuilder content : () -> Content) {
        self.content = content()
        self.screenColor = screenColor
        self.alignment = alignment
    }
    var body: some View{
        ZStack(alignment: alignment){
            Color(screenColor)
            content
                .padding()
        }
        .ignoresSafeArea()
      
        
        
       
    }
}
