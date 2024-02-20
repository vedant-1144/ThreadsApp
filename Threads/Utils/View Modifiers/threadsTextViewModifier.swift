//
//  threadsTextViewModifier.swift
//  Threads
//
//  Created by admin on 15/09/23.
//

import SwiftUI

struct ThreadsTextViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal,24)
    }
}
