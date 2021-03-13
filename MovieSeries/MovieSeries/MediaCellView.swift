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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct MediaCellView_Previews: PreviewProvider {
    static var previews: some View {
        MediaCellView(media: Media.defaultMedia)
    }
}
