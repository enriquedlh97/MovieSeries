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
                    VStack {
                        Text("Movies")
                            .font(.Roboto(size: 48))
                            .foregroundColor(Color("Alizarin"))
                            .padding(.top, 40)
                    }
                    VStack {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(media.movies) {
                                    movie in
                                    NavigationLink(
                                        destination: MediaDetailView(media: movie),
                                        label: {
                                            MediaCellView(media: movie)
                                                .frame(width: geo.size.width)
                                        })
                                }
                            }
                        }
                    }
                    .padding(.top, -6)
                }
                .padding(.bottom, 80)
            }
            .edgesIgnoringSafeArea(.all)

        }
    }
}


struct MovieView_Previews: PreviewProvider {
    static var previews: some View {
        MovieView(media: MediaModel())
    }
}
