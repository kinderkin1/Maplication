//
//  Location.swift
//  MapSwiftUI
//
//  Created by Kin Der on 30.11.23.
//

import Foundation
import MapKit

struct Location: Identifiable, Equatable {
    static func == (lhs: Location, rhs: Location) -> Bool {
        lhs.id == rhs.id
    }
    
//    let id = UUID().uuidString
    let name : String
    let cityName : String
    let coordinate : CLLocationCoordinate2D
    let imageName : String
    
    
    var id: String {
        name + cityName
    }
}
//struct Location: [Location] = [
//    Location{
//    name2: "Ks",
//    cityName: "Rome",
//    coordinates: CLLocationCoordinate2D(latitude: 41.8902, longitude: 12.444)
//    imageName: "dd"
//    }
//
//]
  
