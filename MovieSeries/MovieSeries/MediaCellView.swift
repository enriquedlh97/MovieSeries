//
//  MediaCellView.swift
//  MovieSeries
//
//  Created by Enrique Diaz de Leon Hicks on 3/13/21.
//

import SwiftUI

struct MediaCellView: View {
    
    var media: Media
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                ZStack {
                    VStack {
                        Image(media.images[0])
                            .resizable()
                            .scaledToFit()
                            .frame(width: geo.size.width-40)
                            .cornerRadius(40)
                            .overlay(
                                ZStack {
                            RoundedRectangle(cornerRadius: 33)
                                .stroke(Color("Alizarin"), style: StrokeStyle(lineWidth: 10, lineCap:  .round, lineJoin: .round))
                                VStack {
                                    Spacer()
                                    HStack {
                                    ScoreView(score: media.score)
                                        Spacer()
                                    }
                                    .padding(.leading, 40)
                                    .padding(.bottom, -35)
                                }
                                }
                            )
                            .padding(.horizontal, 20)
                            .padding(.top,10)
                    }
                    
                }
            }
        }
    }
}

struct MediaCellView_Previews: PreviewProvider {
    static var previews: some View {
        MediaCellView(media: Media.defaultMedia)
    }
}
