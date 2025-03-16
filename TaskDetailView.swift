//
//  TaskDetailView.swift
//  TaskManagerSwiftUI
//
//  Created by Abolfazl-Atena on 3/17/25.
//

import SwiftUI

struct TaskDetailView: View {
    @Binding var task : String
    @State var isEditing  = false
    @State var editedText = ""
    
    var body: some View {
        VStack {
            if isEditing {
                TextField("Edit Text",text: $editedText)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                
                Button("Save"){
                    task = editedText
                    isEditing = false
                }
            } else {
                Text(task)
                    .font(.title)
                    .padding()
                Button("Edit"){
                    isEditing = true
                    editedText = task
                }
            }
        }.padding()
       
    }
}


