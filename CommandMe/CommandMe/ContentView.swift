//
//  ContentView.swift
//  CommandMe
//
//  Created by Lucas Derraugh on 7/29/21.
//

import SwiftUI

struct ContentView: View {
    
    let cols: [GridItem] = [
        .init(.flexible()),
        .init(.flexible()),
        .init(.flexible())
    ]
    
    let videoImages = Array(1...6).map { "video\($0)" }
    
    @StateObject var appState: AppState
    
    var body: some View {
        VStack {
            Text(appState.text)
            Button(action: {
                appState.installTool()
            }, label: {
                Text("Install Tool")
            })
        }
        Image("header")
            .resizable()
            .aspectRatio(contentMode: .fit)
        
        LazyVGrid(columns: cols) {
            ForEach(videoImages, id: \.self) { imageName in Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
        }.frame(minWidth: 300, maxHeight: 400)
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(appState: AppState())
    }
}
