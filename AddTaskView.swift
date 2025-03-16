//
//  AddTaskView.swift
//  TaskManagerSwiftUI
//
//  Created by Abolfazl-Atena on 3/17/25.
//

import SwiftUI

struct AddTaskView: View {
    @Binding var tasks : [String]
    @State var newTask = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationView {
            VStack {
                TextField("Enter Task", text: $newTask)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                Button("Add Task"){
                    if !newTask.isEmpty {
                        tasks.append(newTask)
                        dismiss()
                    }
                }.padding()
                
                
            }
        }.navigationTitle("New Task")
            .toolbar {
                Button("Cancle"){
                    dismiss()
                }
            }
    }
}

