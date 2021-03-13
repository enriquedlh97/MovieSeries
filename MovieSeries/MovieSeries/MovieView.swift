//
//  MovieView.swift
//  MovieSeries
//
//  Created by Enrique Diaz de Leon Hicks on 3/9/21.
//

import SwiftUI

struct MovieView: View {
    
    @StateObject var media: MediaModel
    
    var body: some View {
        ZStack {
            Color("BelizeHole")
            VStack {
                Text("Movies")
                    .font(.Roboto(size: 48))
                    .foregroundColor(Color("Alizarin"))
            }
            VStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(media.movies) {
                            movie in Text(movie.name).padding()
                        }
                    }
                }
            }
        }
    }
}

struct MovieView_Previews: PreviewProvider {
    static var previews: some View {
        MovieView(media: MediaModel())
    }
}
