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
        Text(media.name).padding()
    }
}

struct MediaCellView_Previews: PreviewProvider {
    static var previews: some View {
        MediaCellView(media: Media.defaultMedia)
    }
}
