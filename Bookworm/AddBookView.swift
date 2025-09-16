//
//  AddBookView.swift
//  Bookworm
//
//  Created by Dmitry Kononov on 15.09.25.
//

import SwiftUI

struct AddBookView: View {
    @Environment(\.modelContext) private var modelContext
    @Environment(\.dismiss) private var dismiss
    
    @State private var title: String = ""
    @State private var author: String = ""
    @State private var genre: Genre = .fantasy
    @State private var review: String = ""
    @State private var rating: Int = 3

    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("Name of book", text: $title)
                    TextField("Author name", text: $author)
                    Picker("Genre", selection: $genre) {
                        ForEach(Genre.allCases, id: \.self) {
                            Text($0.rawValue.capitalized)
                        }
                    }
                }
                
                Section("Write a review") {
                    TextEditor(text: $review)
                    RatingView(rating: $rating)
                }
                
                Section {
                    Button("Save") {
                        let newBook = Book(author: author, title: title, genre: genre.rawValue, review: review, rating: rating)
                        modelContext.insert(newBook)
                        dismiss()
                    }
                }
            }
            .navigationTitle("Add book")
        }
    }
}

#Preview {
    AddBookView()
}
