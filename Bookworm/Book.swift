//
//  Book.swift
//  Bookworm
//
//  Created by Dmitry Kononov on 15.09.25.
//

import Foundation
import SwiftData

@Model
final class Book {
    var author: String
    var title: String
    var genre: String
    var review: String
    var rating: Int
    
    init(
        author: String,
        title: String,
        genre: String,
        review: String,
        rating: Int
    ) {
        self.author = author
        self.title = title
        self.genre = genre
        self.review = review
        self.rating = rating
    }
}

enum Genre: String, CaseIterable {
    case fantasy = "Fantasy"
    case horror = "Horror"
    case kids = "Kids"
    case mistary = "Mistary"
    case poetry = "Poetry"
    case romance = "Romance"
    case thriiller = "Thriiller"
}
