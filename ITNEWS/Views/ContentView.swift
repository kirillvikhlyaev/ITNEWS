 //
 //  ContentView.swift
 //  ITNEWS
 //
 //  Created by Кирилл on 10.07.2022.
 //  Copyright © 2022 Kirill. All rights reserved.
 //
 
 import SwiftUI
 
 struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailsView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
            }
            .navigationBarTitle("ITNEWS")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
 }
 
 struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
 }
