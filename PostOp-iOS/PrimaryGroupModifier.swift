//
//  PrimaryGroupModifier.swift
//  PostOp-iOS
//
//  Created by Geraldine Turcios on 9/10/22.
//

import SwiftUI

struct PrimaryGroupModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(20)
            .background(Color.white.opacity(0.1))
            .cornerRadius(20)
            .blendMode(.overlay)
            .shadow(color: .black.opacity(0.25), radius: 4, y: 4)
    }
}

extension View {
    func primaryGroupStyle() -> some View {
        self.modifier(PrimaryGroupModifier())
    }
}
