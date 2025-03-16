//
//  ContentView.swift
//  TaskManagerSwiftUI
//
//  Created by Abolfazl-Atena on 3/17/25.
//

import SwiftUI

struct ContentView: View {
    @State var tasks : [String] = ["Buy groceries", "Go for a walk"]
    
    var body: some View {
        NavigationView {
            List(tasks,id:\.self) {task in
                Text(task)
            }.navigationTitle("Tasks")
        }
    }
}

#Preview {
    ContentView()
}
