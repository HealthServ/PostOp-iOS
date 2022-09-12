//
//  HomeView.swift
//  PostOp-iOS
//
//  Created by Geraldine Turcios on 9/9/22.
//

import SwiftUI

struct CircleProgressView: View {
    var value: Double
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(Color.black, lineWidth: 10)
            
            Circle()
                .trim(from: 0, to: value)
                .stroke(Color.accentColor, style: .init(lineWidth: 10, lineCap: .round))
                .rotationEffect(.degrees(-90))
                .animation(.easeOut, value: value)
            
            Text("\(value * 100, specifier: "%.0f")%")
        }
        .frame(width: 75, height: 75)
    }
}

struct HomeView: View {
    @State private var isAddRoutineFlowVisible = false
    
    var routines: [Routine]
    
    var body: some View {
        ZStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 26) {
                    VStack(alignment: .leading) {
                        Text("Welcome, Geraldine.")
                            .font(.system(size: 28))
                            .fontWeight(.bold)
                        
                        Text("How are you feeling today?")
                    }
                    
                    GroupBox {
                        HStack(alignment: .top) {
                            VStack(alignment: .leading) {
                                Text("Routine progress")
                                    .font(.headline)
                                
                                Text("9/9/2022")
                                    .foregroundColor(.secondary)
                            }
                            
                            Spacer()
                            
                            CircleProgressView(value: 0.75)
                        }
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Your Routines")
                            .font(.headline)
                        
                        Text("Number of routines: \(routines.count)")
                            .foregroundColor(.secondary)
                    }
                    
                    VStack(alignment: .leading) {
                        ForEach(routines) { routine in
                            NavigationLink(routine.name) {
                                RoutineDetailView(routine: routine)
                            }
                            .buttonStyle(.bordered)
                        }
                    }
                }
                .padding(20)
            }
            
            VStack {
                Spacer()
                
                Button("Find routine") {
                    isAddRoutineFlowVisible = true
                }
                .buttonStyle(.primary)
            }
            .padding(20)
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("")
        .sheet(isPresented: $isAddRoutineFlowVisible) {
            SurgerySelectionView(surgeries: Surgery.examples)
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    // Add sign out capability
                } label: {
                    Image(systemName: "gearshape.fill")
                }
            }
            
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    //
                } label: {
                    Image(systemName: "bell.fill")
                }
            }
        }
    }
}

//struct HomeView: View {
//    @State private var isAddRoutineFlowVisible = false
//
//    var routines: [Routine]
//
//    init(routines: [Routine]) {
//        UINavigationBar.appearance().tintColor = .clear
//        self.routines = routines
//    }
//
//    var body: some View {
//        ScrollView {
//            VStack(alignment: .leading, spacing: 25) {
//                VStack(alignment: .leading, spacing: 0) {
//                    Text("Welcome, Ian")
//                        .font(.title)
//                        .foregroundColor(.white)
//                        .padding(.top, 8)
//
//                    Text("How are you feeling today?")
//                        .foregroundColor(.white)
//                }
//
//                VStack {
//                    HStack(alignment: .top) {
//                        VStack(alignment: .leading) {
//                            Text("Routine Progress")
//                                .foregroundColor(.white)
//
//                            Text("9/9/2022")
//                                .font(.caption)
//                                .foregroundColor(.init("LightGray"))
//                        }
//
//                        Spacer()
//
//                        ZStack {
//                            Circle()
//                                .foregroundColor(.white.opacity(0.2))
//                                .frame(width: 75, height: 75)
//
//                            Circle()
//                                .foregroundColor(.clear)
//                                .frame(width: 62.5, height: 62.5)
//
//                            Text("75%")
//                                .foregroundColor(.white)
//                        }
//                    }
//                }
//                .primaryGroupStyle()
//
//                VStack(spacing: 25) {
//                    HStack(alignment: .top) {
//                        VStack(alignment: .leading) {
//                            Text("Your Routines")
//                                .foregroundColor(.white)
//
//                            Text("Number of routines: 6")
//                                .font(.caption)
//                                .foregroundColor(.init("LightGray"))
//                        }
//
//                        Spacer()
//                    }
//
//                    LazyVGrid(columns: [.init(spacing: 21), .init()], spacing: 25) {
//                        ForEach(routines) { routine in
//                            Text(routine.name)
//                                .fontWeight(.bold)
//                                .foregroundColor(.white)
//                                .frame(minWidth: 0, maxWidth: .infinity)
//                                .multilineTextAlignment(.center)
//                                .padding(15)
//                                .background(
//                                    LinearGradient(
//                                        colors: [
//                                            .white.opacity(0.18),
//                                            .init("VeryLightGray")
//                                        ],
//                                        startPoint: .top,
//                                        endPoint: .bottom
//                                    )
//                                    .shadow(color: .black.opacity(0.25), radius: 4, y: 4)
//                                )
//                                .cornerRadius(15)
//                        }
//                    }
//                }
//                .primaryGroupStyle()
//
//                Spacer()
//            }
//        }
//        .padding(.horizontal, 20)
//        .navigationTitle("")
//        .navigationBarTitleDisplayMode(.inline)
//        .sheet(isPresented: $isAddRoutineFlowVisible) {
//            SurgerySelectionView(surgeries: Surgery.examples)
//        }
//        .toolbar {
//            ToolbarItem(placement: .navigationBarLeading) {
//                Button {
//                    // Add sign out capability
//                } label: {
//                    Image(systemName: "gearshape.fill")
//                }
//                .accentColor(.init("LightGray"))
//            }
//
//            ToolbarItem(placement: .navigationBarTrailing) {
//                Button {
//                    //
//                } label: {
//                    Image(systemName: "bell.fill")
//                }
//                .accentColor(.init("LightGray"))
//            }
//        }
//        .wrapInCommonBackground()
//    }
//}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            HomeView(routines: Routine.examples)
        }
    }
}
