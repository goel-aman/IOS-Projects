//
//  ContentView.swift
//  HackerNews
//
//  Created by Aman Goel on 19/12/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts) { p in
                HStack {
                    Text(String(p.points))
                    Text(p.title)
                }
            }.navigationTitle("Tech Keda")
        }
        
        .onAppear{
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

