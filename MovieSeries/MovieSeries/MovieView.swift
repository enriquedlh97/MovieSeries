//
//  MovieView.swift
//  MovieSeries
//
//  Created by Enrique Diaz de Leon Hicks on 3/9/21.
//

import SwiftUI

struct MovieView: View {
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
                    }
                }
            }
        }
    }
}

struct MovieView_Previews: PreviewProvider {
    static var previews: some View {
        MovieView()
    }
}
