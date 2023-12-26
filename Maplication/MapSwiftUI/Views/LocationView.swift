//
//  LocationViewModel.swift
//  MapSwiftUI
//
//  Created by Kin Der on 30.11.23.
//

import SwiftUI
import MapKit
import CoreLocationUI

struct LocationView: View {
//    @StateObject private var viewModel = ContentViewModel()
    var location : Location
    @EnvironmentObject private var vm : LocationViewModel
    //    @State private var region = MKCoordinateRegion(
    //        center: CLLocationCoordinate2D(latitude: 55.6362484, longitude:  37.3271126),
    //        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    //    )
    
    var body: some View {
        
        ZStack{
            ZStack {
                Map(coordinateRegion: $vm.mapRegion,  annotationItems: vm.locations, annotationContent: {location in MapAnnotation(coordinate: location.coordinate) {
                    Image( "ic_tracker_75dp")
                        .padding(.top, 99)
                    
                        .frame(width: 20,height:20)
                    Image(location.imageName)
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 50,height:50)
                    
                        .foregroundStyle(.white)
                        .onTapGesture {
                            vm.showNextLocation(location: location)
                        }
                        .scaleEffect(vm.mapLocation == location ? 1.1 : 0.7)
                    
                }
                    
                    
                })
                
            }
            .ignoresSafeArea()
            
            VStack {
                
                
                
                // Mapn Zoom out button
                Button {
                    vm.mapRegion.span.latitudeDelta *= 0.6
                    vm.mapRegion.span.longitudeDelta *= 0.6
                } label: {
                    Image("ic_zoom_plus_55dp")
                        .shadow(radius: 20)
                    
                }
                Button {
                    vm.mapRegion.span.latitudeDelta /= 0.6
                    vm.mapRegion.span.longitudeDelta /= 0.6
                } label: {
                    Image("ic_zoom_minus_55dp")
                        .shadow(radius: 20)
                }
                
                // Map Zoom in button
                
            }.padding(.bottom, 600)
                .padding(.leading, 290)
            
            ZStack{
                
                ForEach(vm.locations) { location in
                    if vm.mapLocation == location {
                        LocacionBottomView(location: location)
                            .shadow(color: .black.opacity(0.3), radius: 20)
                            .padding()
                            .transition(.asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading)))
                            .frame(width: 790)
                            .padding(.top, 652)
                    }
                    LocationButton(.currentLocation){
//                        viewModel.requrstAllowOnceLocationPermission()
                        
                    }
                    .foregroundColor(.white)
                    .symbolVariant(.fill)
                    .labelStyle(.iconOnly)
                    .padding(.bottom, 430)
                        .padding(.leading, 290)
                       
                        .cornerRadius(8)
                }
            }
            
        }
        
    }
}

struct LocationView_Previews: PreviewProvider {
    static var previews: some View{
    
        LocationView(location: LocationDataService.locations.first!)
            .environmentObject(LocationViewModel())
}
}
//final class ContentViewModel : NSObject, ObservableObject, CLLocationManagerDelegate {
//    @State private var region = MKCoordinateRegion(
//        center: CLLocationCoordinate2D(latitude: 55.6362484, longitude:  37.3271126),
//        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
//    )
//let localManager = CLLocationManager()
//    
//    override init() {
//        super.init()
//        localManager.delegate = self
//    }
//    func requrstAllowOnceLocationPermission() {
//        localManager.requestLocation()
//    }
//    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
//        
//        guard let latestLocation = locations.first else {
//            return
//        }
//        DispatchQueue.main.async {
//            self.region = MKCoordinateRegion(center: latestLocation.coordinate, span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1))
//        }
//    }
//    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
//        print(error.localizedDescription)
//    }
//}
