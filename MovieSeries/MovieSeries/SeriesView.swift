//
//  SeriesView.swift
//  MovieSeries
//
//  Created by Enrique Diaz de Leon Hicks on 3/9/21.
//

import SwiftUI

struct SeriesView: View {
    
    @StateObject var media: MediaModel
    
    var body: some View {
        GeometryReader { geo in
            ZStack {
                Color(.black)
                VStack {
                    VStack {
                        Text("Series")
                            .font(.Roboto(size: 48))
                            .foregroundColor(Color("Clouds"))
                            .padding(.top, 40)
                    }
                    VStack {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(media.series) {
                                    series in
                                    NavigationLink(
                                        destination: MediaDetailView(media: series),
                                        label: {
                                            MediaCellView(media: series)
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

struct SeriesView_Previews: PreviewProvider {
    static var previews: some View {
        SeriesView(media: MediaModel())
    }
}
