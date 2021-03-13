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
        VStack {
            ZStack {
                VStack {
                    Image(media.images[0])
                        .resizable()
                        .scaledToFit()
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
