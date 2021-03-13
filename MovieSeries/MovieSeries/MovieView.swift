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
        GeometryReader { geo in
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
                            movie in MediaCellView(media: movie)
                                .frame(width: geo.size.width)
                        }
                    }
                }
            }
        }
    }
        .edgesIgnoringSafeArea(.all)
    }
}


struct MovieView_Previews: PreviewProvider {
    static var previews: some View {
        MovieView(media: MediaModel())
    }
}
