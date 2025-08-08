//
//  ContentView.swift
//  ToDoList
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack{
             Text("To-Do List")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                Spacer()
                Button {
                    
                    
                }//end Button
                label: {
                    Text("+")
                        .font(.title)
                        .fontWeight(.bold)
                }//end label
            }//end HStack
            .padding()
            Spacer()
        }//end VStack
    }//end some View
}//end struct ContentView

#Preview {
    ContentView()
}
