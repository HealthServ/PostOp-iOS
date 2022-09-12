//
//  CommonBackgroundModifier.swift
//  PostOp-iOS
//
//  Created by Geraldine Turcios on 9/10/22.
//

import SwiftUI

struct CommonBackgroundModifier: ViewModifier {
    func body(content: Content) -> some View {
        ZStack {
            Color.black.ignoresSafeArea(.all)
            
            LinearGradient(
                colors: [.init("NavyBlue"), .init("OpaqueWhite")],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .blur(radius: 40)
            .ignoresSafeArea(.all)
            
            content
        }
    }
}

extension View {
    func wrapInCommonBackground() -> some View {
        self.modifier(CommonBackgroundModifier())
    }
}
