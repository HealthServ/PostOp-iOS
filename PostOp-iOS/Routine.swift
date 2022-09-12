//
//  Routine.swift
//  PostOp-iOS
//
//  Created by Geraldine Turcios on 9/9/22.
//

import SwiftUI

struct Routine: Identifiable {
    let id = UUID()
    let name: String
    let color: Color
    let progressValue: Float
    
    static var examples: [Self] = [
        .init(name: "Josh’s super awesome routine", color: .orange, progressValue: 0.2),
        .init(name: "My not so awesome routine", color: .yellow, progressValue: 0.4),
        .init(name: "Luke’s kinda awesome routine", color: .green, progressValue: 0.9),
        .init(name: "Paul's so awesome routine", color: .blue, progressValue: 0.0),
    ]
}
