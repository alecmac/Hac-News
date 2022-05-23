//
//  ContentView.swift
//  Hac News
//
//  Created by Alec Mac on 5/21/22.
//

import SwiftUI

struct ContentView: View {
    
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts, rowContent: { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
            })
            .navigationTitle("Hac News")
            .navigationViewStyle(StackNavigationViewStyle())
        }
        .onAppear {
            networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

