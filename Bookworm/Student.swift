//
//  Student.swift
//  Bookworm
//
//  Created by Dmitry Kononov on 15.09.25.
//

import Foundation
import SwiftData

@Model
final class Student {
    var id: UUID
    var name: String
    
    init(id: UUID, name: String) {
        self.id = id
        self.name = name
    }
}
