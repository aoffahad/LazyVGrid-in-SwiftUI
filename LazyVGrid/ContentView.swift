//
//  ContentView.swift
//  LazyVGrid
//
//  Created by Fahad on 16/8/23.
//

import SwiftUI

struct ContentView: View {
    let columns: [GridItem] = [
        GridItem(.flexible(),spacing: nil,alignment: nil),
        GridItem(.flexible(),spacing: nil,alignment: nil),
        GridItem(.flexible(),spacing: nil,alignment: nil)
        
    ]
    var body: some View {
        
        ScrollView {
            Rectangle()
                .fill(.red)
                .frame(height: 400)
            LazyVGrid(columns: columns,
                      alignment: .center,
                      spacing: 5,
                      pinnedViews: [.sectionHeaders],
                      content: {
                
                
                Section(
                    header:
                        Text("Section 1")
                        .foregroundColor(.black)
                        .padding()
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.blue)){
                            ForEach(0..<40){ index in
                                Rectangle()
                                    .frame(height: 100)
                                
                            }
                        }
            })
            
            LazyVGrid(columns: columns,
                      alignment: .center,
                      spacing: 5,
                      pinnedViews: [.sectionHeaders],
                      content: {
                
                
                Section(
                    header:
                        Text("Section 2")
                        .foregroundColor(.black)
                        .padding()
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.blue))
                {
                            ForEach(0..<40){ index in
                                Rectangle()
                                    .fill(.green)
                                    .frame(height: 100)
                                
                            }
                        }
            })
            
            
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
