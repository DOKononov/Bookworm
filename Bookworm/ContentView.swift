//
//  ContentView.swift
//  Bookworm
//
//  Created by Dmitry Kononov on 15.09.25.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("notes") private var notes = ""
    
    var body: some View {
        NavigationStack {
            TextEditor(text: $notes)
                .navigationTitle("Notes")
                .padding()
        }
    }
}

#Preview {
    ContentView()
}
