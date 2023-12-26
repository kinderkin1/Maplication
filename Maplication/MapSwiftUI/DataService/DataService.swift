//
//  DataService.swift
//  MapSwiftUI
//
//  Created by Kin Der on 30.11.23.
//

import Foundation
import MapKit
class LocationDataService {
    static let locations : [Location] = [
        Location(
    name: "Жена",
    cityName: "Москва",
    coordinate: CLLocationCoordinate2D(
        latitude: 55.576370,
        longitude: 37.436490),
    imageName: "жена"
    
    ),
        Location(
    name: "Муж",
    cityName: "Москва",
    coordinate:  CLLocationCoordinate2D(
        latitude: 55.526460,
        longitude: 37.336250),
    imageName: "муж"
    
    ),
        Location(
    name: "Люська",
    cityName: "Москва",
    coordinate: CLLocationCoordinate2D(
        latitude: 55.6362484,
        longitude: 37.3271126),
    imageName: "jj"
    
    
    ),
        Location(
    name: "Варфоломей",
    cityName: "Стамбул",
    coordinate: CLLocationCoordinate2D(
        latitude: 36.567138,
        longitude: 36.153175),
    imageName: "Варфоломей"
    
    
    )
    ]
}
