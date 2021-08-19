//
//  GridItemView.swift
//  Africa
//
//  Created by Baris Saraldi on 19.08.2021.
//

import SwiftUI

struct GridItemView: View {
    // MARK: - Properties
    
    let animal: Animal
    
    // MARK: - Body
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

// MARK: - Previews
struct GridItemView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        GridItemView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
