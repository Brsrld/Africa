//
//  CoverImageView.swift
//  Africa
//
//  Created by Baris Saraldi on 18.08.2021.
//

import SwiftUI

struct CoverImageView: View {
    
    // MARK: - Properties
    
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    
    // MARK: - Body
    var body: some View {
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            }//: Loop
        }//: TAB
        .tabViewStyle(PageTabViewStyle())
    }
}
// MARK: - Preview

struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
