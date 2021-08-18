//
//  MapView.swift
//  Africa
//
//  Created by Baris Saraldi on 18.08.2021.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    // MARK: - Properties

    @State private var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        
        return mapRegion
    }()
    
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    // MARK: - Body
    
    var body: some View {
        
        // MARK: - Basic Map
        
        
        // MARK: - Advenced Map
        
        Map(coordinateRegion: $region, annotationItems: locations, annotationContent: { item in
            
            MapAnnotation(coordinate: item.location) {
                MapAnnotitationView(location: item)
            }
        })//: MAP
        .overlay(
            HStack(alignment: .center) {
                Image("compass")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 48, height: 48, alignment: .center)
                
                VStack(alignment: .leading, spacing: 3) {
                    HStack {
                        Text("Latitute:")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.latitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                    }
                    
                    Divider()
                    HStack {
                        Text("Longitude:")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.longitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                    }
                    
                }
            }//; HSTACK
            .padding(.vertical, 12)
            .padding(.horizontal,16)
            .background(
                Color.black
                    .cornerRadius(8)
                    .opacity(0.6)
            )
            .padding()
            ,alignment: .top
        )
    }
}
 
// MARK: - Previews

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
