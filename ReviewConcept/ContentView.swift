//
//  ContentView.swift
//  ReviewConcept
//
//  Created by Saad Anis on 6/8/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            OverviewView()
                .tabItem {
                    Image(systemName: "chart.bar.doc.horizontal")
                    Text("Overview")
                }
            
            TemplateView()
                .tabItem {
                    Image(systemName: "doc.on.clipboard")
                    Text("Template")
                }
            
            Text("Hi, world!")
                .tabItem {
                    Image(systemName: "plus.square")
                    Text("New")
                }
            
            Text("Hi, world!")
                .tabItem {
                    Image(systemName: "clock")
                    Text("History")
                }
            
            Text("Hi, world!")
                .tabItem {
                    Image(systemName: "gearshape")
                    Text("Settings")
                }
        }
      //  .edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
