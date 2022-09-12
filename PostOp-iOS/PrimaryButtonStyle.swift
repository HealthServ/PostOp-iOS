//
//  PrimaryButtonStyle.swift
//  PostOp-iOS
//
//  Created by Geraldine Turcios on 9/9/22.
//

import SwiftUI

struct PrimaryButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(minWidth: 0, maxWidth: .infinity, maxHeight: 40)
            .font(.headline)
            .padding(.vertical, 10)
            .background(Color.accentColor)
            .cornerRadius(10)
            .foregroundColor(.white)
            .background(Color(uiColor: .systemBackground))
    }
}

extension ButtonStyle where Self == PrimaryButtonStyle {
    static var primary: Self { PrimaryButtonStyle() }
}
