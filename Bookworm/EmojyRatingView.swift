//
//  EmojyRatingView.swift
//  Bookworm
//
//  Created by Dmitry Kononov on 16.09.25.
//

import SwiftUI

struct EmojyRatingView: View {
    let rating: Int
    
    var body: some View {
        switch rating {
        case 1: Text("🫣")
        case 2: Text("🫩")
        case 3: Text("😐")
        case 4: Text("🙂")
        case 5: Text("😃")
        default: Text("🫥")
        }
    }
}

#Preview {
    EmojyRatingView(rating: 3)
}
