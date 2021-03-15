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
                MovieView(media: media)
                    .tabItem {
                        Label("Movies", systemImage: "film.fill")
                    }
                SeriesView(media: media)
                    .tabItem{
                        Label("Series", systemImage: "play.tv.fill")
                    }
            }
        }
        .accentColor(Color("Clouds"))
        .onAppear {
           UITabBar.appearance().barTintColor = UIColor(Color("DraculaOrchid"))
        }
    }
}

struct MovieSeriesView_Previews: PreviewProvider {
    static var previews: some View {
        MovieSeriesView()
    }
}
