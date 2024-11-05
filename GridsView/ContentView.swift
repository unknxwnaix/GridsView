//
//  ContentView.swift
//  GridsView
//
//  Created by Maxim Dmitrochenko on 04-11-2024.
//

import SwiftUI

struct ContentView: View {
    @State private var isVolumeOn = false
    
    var body: some View {
        Grid(horizontalSpacing: 30, verticalSpacing: 30) {
            GridRow {
                RoundedRectangle(cornerRadius: 8)
                    .fill(.pink.gradient)
                    .frame(width: 100, height: 100)
                
                VStack {
                    Circle()
                        .foregroundStyle(.secondary)
                        .frame(width: 60, height: 60)
                    Text("Maxim")
                }
                
                VStack {
                    Button("Tap Me") {
                        //whatever
                    }
                    .buttonStyle(.borderedProminent)
                    
                    Toggle("Volume", isOn: $isVolumeOn)
                        .labelsHidden()
                }
            }
            
            Divider()
            
            GridRow {
                RoundedRectangle(cornerRadius: 8)
                    .fill(.teal.gradient)
                    .frame(height: 100)
                    .gridCellColumns(2)
            }
        }
        .padding()
    
//    let columns = Array(repeating: GridItem(.flexible(), spacing: 20), count: 4)
//    
//    let rows = Array(repeating: GridItem(.fixed(100)), count: 3)
//    
//    var body: some View {
//        ScrollView(.horizontal) {
//            LazyHGrid(rows: rows) {
//                ForEach(MockData.colors, id: \.self) { color in
//                    RoundedRectangle(cornerRadius: 10)
//                        .fill(color.gradient)
//                        .frame(width : 100)
//                }
//            }
//        }
    
    //------------------------------------------------------//
    //------------------------------------------------------//
        
//        ScrollView {
//            VStack {
//                LazyVGrid(columns: columns, spacing: 20, pinnedViews: .sectionHeaders) {
//                    Section {
//                        ForEach(MockData.colors, id: \.self) { color in
//                            RoundedRectangle(cornerRadius: 10)
//                                .fill(color.gradient)
//                                .frame(height: 100)
//                        }
//                    } header: {
//                        Text("Favorites")
//                            .font(.largeTitle.bold())
//                            .frame(maxWidth: .infinity, alignment: .leading)
//                    }
//                    
//                    Section {
//                        ForEach(MockData.colors, id: \.self) { color in
//                            RoundedRectangle(cornerRadius: 10)
//                                .fill(color.gradient)
//                                .frame(height: 100)
//                        }
//                    } header: {
//                        Text("Dont Like")
//                            .font(.largeTitle.bold())
//                            .frame(maxWidth: .infinity, alignment: .leading)
//                    }
//                }
//            }
//            .padding()
//        }
    }
}

#Preview {
    ContentView()
}
