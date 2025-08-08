//
//  ContentView.swift
//  ToDoList
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State private var showNewTask = false
    @Query var toDos: [ToDoItem]
    var body: some View {
        VStack {
            HStack{
             Text("To-Do List")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                Spacer()
                Button {
                    withAnimation{
                        showNewTask = true
                    }//end withAnimation
                }//end Button
                label: {
                    Text("+")
                        .font(.title)
                        .fontWeight(.bold)
                }//end label
            }//end HStack
            .padding()
            Spacer()
            List{
                ForEach(toDos){
                    toDoItem in if toDoItem.isImportant{
                        Text("‼️" + toDoItem.title)
                    } else{
                        Text(toDoItem.title)
                    }
                }//end ForEach
            }//end List
            .listStyle(.plain)
        }//end VStack
        if showNewTask{
            NewToDo(showNewTask: $showNewTask, toDoItem: ToDoItem(title: "", isImportant: false))
        }//end showNewTask
    }//end some View
}//end struct ContentView

#Preview {
    ContentView()
        .modelContainer(for: ToDoItem.self, inMemory: true)
}
