//
//  RoutineDetailView.swift
//  PostOp-iOS
//
//  Created by Geraldine Turcios on 9/9/22.
//

import SwiftUI

struct RoutineDetailView: View {
    var routine: Routine
    
    var body: some View {
        ScrollView {
            Image("WomanRunning")
                .resizable()
                .aspectRatio(contentMode: .fill)
            
            GroupBox {
                VStack(alignment: .leading, spacing: 10) {
                    Text("Author: ")
                    +
                    Text("King Arthur")
                        .foregroundColor(.secondary)
                    
                    Text("Description: ")
                    +
                    Text("Knee focused exercises to help revitalize your broken dreams (and knee).")
                        .foregroundColor(.secondary)
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Estimated time to complete:")
                        
                        Text("60 min")
                            .foregroundColor(.secondary)
                    }
                }
            }
        }
        .navigationTitle(routine.name)
        .toolbar {
            Button {
                //
            } label: {
                Image(systemName: "heart.fill")
                    .foregroundColor(.red)
            }
        }
    }
}

struct RoutineDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RoutineDetailView(routine: .examples[0])
    }
}
