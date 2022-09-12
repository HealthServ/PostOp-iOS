//
//  CreateRoutineView.swift
//  PostOp-iOS
//
//  Created by Geraldine Turcios on 9/8/22.
//

import SwiftUI

struct CreateRoutineView: View {
    var body: some View {
        List {
            Section("Routine Name") {
                TextField("Daily Crunches", text: .constant(""))
            }
        }
        .listStyle(.inset)
        .navigationTitle("Create routine")
        .toolbar {
            ToolbarItem(placement: .confirmationAction) {
                Button("Done") {
                    // TODO: Add create capability
                }
            }
        }
    }
}

struct CreateRoutineView_Previews: PreviewProvider {
    static var previews: some View {
        CreateRoutineView()
    }
}
