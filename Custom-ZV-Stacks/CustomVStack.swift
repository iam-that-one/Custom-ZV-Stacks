//
//  CustomVStack.swift
//  Custom-ZV-Stacks
//
//  Created by Abdullah Alnutayfi on 23/07/2021.
//

import SwiftUI

struct CustomVStack<Content: View> : View{
    let FG_C : Color
    let FONT : Font
    let content : Content
    init(FG_C: Color = .red,FONT : Font = .system(size: 11, weight: .light, design: .default),@ViewBuilder content:()-> Content) {
        self.FG_C = FG_C
        self.FONT = FONT
        self.content = content()
    }
    
    var body: some View{
      
        VStack{
            content
                .frame(width: 100, height: 20)
                .padding(10)
                .background(RoundedRectangle(cornerRadius: 5).fill(Color.green))
                .foregroundColor(FG_C)
                .font(FONT)
                .shadow(color: .black,radius: 5)
                
        }
    }
}

