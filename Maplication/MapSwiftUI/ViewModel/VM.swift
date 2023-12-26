//
//  VM.swift
//  MapSwiftUI
//
//  Created by Kin Der on 30.11.23.
//

import Foundation
import MapKit
class LocationViewModel: ObservableObject{
    @Published var mapRegion : MKCoordinateRegion = MKCoordinateRegion()
    @Published var locations: [Location]
    @Published var mapLocation : Location{
        didSet{
            updateMapregion(location: mapLocation)
        }
    }
  
    let mapSpan = MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)
    init() {
        let locations = LocationDataService.locations
        self.locations = locations
        self.mapLocation = locations.first!
        self.updateMapregion(location: locations.first!)
    }
    
    private func updateMapregion(location: Location) {
 
            mapRegion = MKCoordinateRegion(center: location.coordinate, span: mapSpan)
        }
    func showNextLocation(location : Location) {
   mapLocation = location
    }
    }

