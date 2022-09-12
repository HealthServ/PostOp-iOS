//
//  RoutineSelectionView.swift
//  PostOp-iOS
//
//  Created by Geraldine Turcios on 9/9/22.
//

import SwiftUI

struct RoutineSelectionView: View {
    var surgery: Surgery
    
    var body: some View {
        List {
            Section("Pick one for \(surgery.name.lowercased())") {
                ForEach(surgery.routines) { routine in
                    NavigationLink {
                        RoutineDetailView(routine: routine)
                    } label: {
                        Text(routine.name)
                    }
                }
            }
            .headerProminence(.increased)
        }
        .listStyle(.inset)
        .navigationTitle("Routines")
    }
}

struct RoutineSelectionView_Previews: PreviewProvider {
    static var previews: some View {
            RoutineSelectionView(surgery: .examples[0])
    }
}
