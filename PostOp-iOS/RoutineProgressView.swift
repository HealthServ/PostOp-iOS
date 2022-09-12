//
//  RoutineProgressView.swift
//  PostOp-iOS
//
//  Created by Geraldine Turcios on 9/9/22.
//

import SwiftUI

struct RoutineProgressView: View {
    var title: String
    var fillColor: Color
    var fillValue: Float
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle()
                    .frame(width: geometry.size.width , height: geometry.size.height)
                    .foregroundColor(Color(uiColor: .systemGray5))
                
                Rectangle()
                    .frame(
                        width: min(CGFloat(self.fillValue) * geometry.size.width, geometry.size.width),
                        height: geometry.size.height
                    )
                    .foregroundColor(fillColor)
                    .animation(.linear, value: fillValue)
                
                Text(title)
                    .lineLimit(1)
                    .padding(.horizontal, 20)
            }
            .cornerRadius(20)
        }
    }
}

struct RoutineProgressView_Previews: PreviewProvider {
    static var previews: some View {
        RoutineProgressView(
            title: "Josh's super awesome routine",
            fillColor: .orange,
            fillValue: 0.2
        )
        .frame(height: 50)
    }
}
