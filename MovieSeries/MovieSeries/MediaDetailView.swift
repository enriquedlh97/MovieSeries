//
//  MediaDetailView.swift
//  MovieSeries
//
//  Created by Enrique Diaz de Leon Hicks on 3/13/21.
//

import SwiftUI

struct MediaDetailView: View {
    
    var media: Media
    
    var body: some View {
        GeometryReader { geo in
            
            VStack {
                ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    Text(media.overview)
                        .font(.Roboto(size: 24))
                        .foregroundColor(Color("Alizarin"))
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 20)
                        .padding(.top, 6)
                    Text(media.genre)
                        .font(.Roboto(size: 20))
                        .foregroundColor(Color("Alizarin"))
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 20)
                        .padding(.top, 10)
                }
                }
            }
            .navigationBarTitle(media.name, displayMode: .inline)
            .navigationBarColor(UIColor(named: "MintLeaf"))
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text(media.name)
                        .font(.Roboto(size: 24))
                        .foregroundColor(Color("DraculaOrchid"))
                }
            }
        }
    }
}

struct MediaDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MediaDetailView(media: Media.defaultMedia)
    }
}
