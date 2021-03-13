//
//  ContentView.swift
//  MovieSeries
//
//  Created by Enrique Diaz de Leon Hicks on 3/9/21.
//

import SwiftUI

struct MovieSeriesView: View {
    
    @StateObject var media = MediaModel()
    
    var body: some View {
        NavigationView {
            TabView {
                MovieView()
                    .tabItem {
                        Label("Movies", systemImage: "film.fill")
                    }
                SeriesView()
                    .tabItem{
                        Label("Series", systemImage: "play.tv.fill")
                    }
            }
        }
        .accentColor(Color("DraculaOrchid"))
        .onAppear {
           UITabBar.appearance().barTintColor = UIColor(Color("ChiGong"))
        }
    }
}

struct MovieSeriesView_Previews: PreviewProvider {
    static var previews: some View {
        MovieSeriesView()
    }
}
