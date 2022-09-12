//
//  SurgerySelectionView.swift
//  PostOp-iOS
//
//  Created by Geraldine Turcios on 9/9/22.
//

import SwiftUI

struct SurgerySelectionView: View {
    @Environment(\.dismiss) private var dismiss
    
    var surgeries: [Surgery]
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                List {
                    Section(header: Text("What type of surgery did you get?")) {
                        ForEach(surgeries) { surgery in
                            NavigationLink {
                                RoutineSelectionView(surgery: surgery)
                            } label: {
                                Text(surgery.name)
                            }
                        }
                    }
                    .headerProminence(.increased)
                }
                .listStyle(.inset)
                
                VStack(spacing: 12) {
                    Rectangle()
                        .foregroundColor(Color(uiColor: .systemGray5))
                        .frame(height: 1)
                    
                    Text("Not the right routines for you? Create your own")
                        .font(.footnote)
                    
                    NavigationLink("Create routine") {
                        CreateRoutineView()
                    }
                    .buttonStyle(.primary)
                    .background(Color.white)
                    .padding([.horizontal, .bottom])
                }
            }
            .navigationTitle("Surgery")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "xmark")
                }
            }
        }
    }
}

struct SurgerySelectionView_Previews: PreviewProvider {
    static var previews: some View {
        SurgerySelectionView(surgeries: Surgery.examples)
    }
}
