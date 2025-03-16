//
//  ContentView.swift
//  TaskManagerSwiftUI
//
//  Created by Abolfazl-Atena on 3/17/25.
//

import SwiftUI

struct ContentView: View {
    @State var tasks : [String] = ["Buy groceries", "Go for a walk"]
    @State var isAddingTask = false
    
    var body: some View {
        NavigationView {
            List(tasks,id:\.self) {task in
                Text(task)
            }.navigationTitle("Tasks")
            .toolbar {
                Button(action:{
                    isAddingTask = true
                }){
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $isAddingTask) {
                AddTaskView(tasks: $tasks)
            }
        }
    }
}

#Preview {
    ContentView()
}
