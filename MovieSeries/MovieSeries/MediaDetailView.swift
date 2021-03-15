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
                            .foregroundColor(Color("Clouds"))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 20)
                            .padding(.top, 6)
                        Text(media.genre)
                            .font(.Roboto(size: 20))
                            .foregroundColor(Color("Clouds"))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 20)
                            .padding(.top, 10)
                        NavigationLink(
                        
                            destination: WebView(html: media.trailer),
                            label: {
                                Label("Trailer", systemImage: "play.tv.fill")
                                    .font(.Roboto(size: 20))
                                    .foregroundColor(Color("SwanWhite"))
                                    .multilineTextAlignment(.center)
                                    .background(Color("DraculaOrchid"))
                                    .padding(.horizontal, 20)
                                    .padding(.top, 10)
                            })
                        
                    }
                    VStack {
                        TabView{
                            ForEach(media.images, id: \.self) {
                                image in
                                
                                Image(image)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: geo.size.width-40)
                                    .cornerRadius(40)
                                    .overlay(
                                        ZStack {
                                            RoundedRectangle(cornerRadius: 33)
                                                .stroke(Color("SwanWhite"), style: StrokeStyle(lineWidth: 10, lineCap:  .round, lineJoin: .round))
                                        }
                                    )
                                    .padding(.horizontal, 20)
                                    .padding(.vertical,10)
                                
                                
                            }
                        }
                        .tabViewStyle(PageTabViewStyle())
                    }
                }
            }
            .navigationBarTitle(media.name, displayMode: .inline)
            .navigationBarColor(UIColor(named: "DraculaOrchid"))
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
