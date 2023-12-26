//
//  MapSwiftUIApp.swift
//  MapSwiftUI
//
//  Created by Kin Der on 30.11.23.
//

import SwiftUI

@main
struct MapSwiftUIApp: App {
    
    @StateObject private var vm = LocationViewModel()
    
    var body: some Scene {
        WindowGroup {
            LocationView(location: LocationDataService.locations.first!)
                .environmentObject(vm)
        }
    }
}
