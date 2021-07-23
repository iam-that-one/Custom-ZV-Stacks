//
//  ContentView.swift
//  Custom-ZV-Stacks
//
//  Created by Abdullah Alnutayfi on 23/07/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        CustomZStack(screenColor: .yellow, alignment: .bottomTrailing){
            CustomVStack(FG_C: .blue, FONT: .system(size: 13, weight: .bold, design: .serif)){
                Text("Hello")
                Text("world")
                Image(systemName: "person.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
