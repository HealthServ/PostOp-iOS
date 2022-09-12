//
//  Surgery.swift
//  PostOp-iOS
//
//  Created by Geraldine Turcios on 9/9/22.
//

import Foundation

struct Surgery: Identifiable {
    let id = UUID()
    let name: String
    let routines: [Routine]
    
    static var examples: [Self] = [
        .init(name: "Colon and rectal surgery", routines: Routine.examples),
        .init(name: "Cardiothoracic surgery", routines: Routine.examples),
        .init(name: "General surgery", routines: Routine.examples),
        .init(name: "Gynecology and obsetetrics", routines: Routine.examples),
    ]
}
