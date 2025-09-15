//
//  ContentView.swift
//  Bookworm
//
//  Created by Dmitry Kononov on 15.09.25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var books: [Book]
    @State private var showingAddBook = false
    
    var body: some View {
        NavigationStack {
            Text("Count: \(books.count)")
                .navigationTitle("Bookworm")
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button("Add book", systemImage: "plus") {
                            showingAddBook.toggle()
                        }
                    }
                }
                .sheet(isPresented: $showingAddBook) {
                    AddBookView()
                }
        }
    }
}

#Preview {
    ContentView()
}
