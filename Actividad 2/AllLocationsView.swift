//
//  AllLocationsView.swift
//  Actividad 2
//
//  Created by iOS Lab on 07/02/24.
//

import SwiftUI
import MapKit


struct AllLocationsView: View {
    
    
    
    //var location: Locations
    var body: some View {
        
        let gridItems = [
            GridItem(.flexible(minimum: 180)), GridItem(.flexible(minimum: 180))]

        NavigationStack{
            Text("Locations")
                .font(.custom("Arial", size: 40).bold())
                .frame(width: UIScreen.main.bounds.width / 1.1, alignment: .leading)
            
            Divider()
                .frame(width: UIScreen.main.bounds.width / 1.1, height: 3.0)
                .overlay(.black)
                .padding(.bottom, 10)

            /*
             
             let position = MapCameraPosition.region(
                 MKCoordinateRegion(
                     center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275),
                     span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
                     )
             */
            
            LazyVGrid(columns: gridItems, spacing: 20){
                
                //Fifth Avenue
                //Cal the Navigation link with the Details of the location and the latitude and longitude for the map to load correctly
                NavigationLink(destination: LocationDetails(location: Locations(street: "Fifth Avenue", city: "New York", state: "New York", zipCode: 10110, image: Image("FifthAvenueLoc"), telephone: 2121234567), newPin:Location(name: "NYC Hamburgers, Fifth Avenue", coordinate: CLLocationCoordinate2D(latitude: 40.773998, longitude: -73.966003)), position: MapCameraPosition.region(MKCoordinateRegion(
                    center: CLLocationCoordinate2D(latitude: 40.773998, longitude: -73.966003),
                    span: MKCoordinateSpan(latitudeDelta: 0.03, longitudeDelta: 0.03)
                )))){
                        
                        ListContainer(location: Locations(street: "Fifth Avenue", city: "New York", state: "Manhattan, New York", zipCode: 10110, image: Image("FifthAvenue"), telephone: 2121234567))
                    }
                
                    
                //Wall Street
                NavigationLink(destination: LocationDetails(location: Locations(street: "Wall Street", city: "New York", state: "New York", zipCode: 10005, image: Image("WallStLoc"), telephone: 2129876543), newPin:Location(name: "NYC Hamburgers, Wall St", coordinate: CLLocationCoordinate2D(latitude: 40.706005, longitude: -74.008827)), position: MapCameraPosition.region(MKCoordinateRegion(
                        center: CLLocationCoordinate2D(latitude: 40.706005, longitude: -74.008827),
                        span: MKCoordinateSpan(latitudeDelta: 0.03, longitudeDelta: 0.03)
                    )))){
                        
                        ListContainer(location: Locations(street: "Wall Street", city: "New York", state: "New York", zipCode: 10005, image: Image("WallStSign"), telephone: 2129876543))
                    }
                
                //Broasway street
                NavigationLink(destination: LocationDetails(location: Locations(street: "Broadway Street", city: "New York", state: "New York", zipCode: 10003, image: Image("BroadwayStLoc"), telephone: 2126575432), newPin:Location(name: "NYC Hamburgers, Broadway St", coordinate: CLLocationCoordinate2D(latitude: 40.790886, longitude: -73.974709)), position: MapCameraPosition.region(MKCoordinateRegion(
                        center: CLLocationCoordinate2D(latitude: 40.790886, longitude: -73.974709),
                        span: MKCoordinateSpan(latitudeDelta: 0.03, longitudeDelta: 0.03)
                    )))){
                        
                        ListContainer(location: Locations(street: "Broadway Street", city: "New York", state: "New York", zipCode: 10003, image: Image("BroadwayStSign"), telephone: 2126575432))
                    }
                
                
                NavigationLink(destination: LocationDetails(location: Locations(street: "Lexington Avenue", city: "New York", state: "New York", zipCode: 10003, image: Image("LexingtonAvenueLoc"), telephone: 2122468086), newPin:Location(name: "NYC Hamburgers, Lexington Av.", coordinate: CLLocationCoordinate2D(latitude: 40.7618, longitude: -73.968)), position: MapCameraPosition.region(MKCoordinateRegion(
                        center: CLLocationCoordinate2D(latitude: 40.7618, longitude: -73.968),
                        span: MKCoordinateSpan(latitudeDelta: 0.03, longitudeDelta: 0.03)
                    )))){
                        
                        ListContainer(location: Locations(street: "Lexington Avenue", city: "New York", state: "New York", zipCode: 10003, image: Image("LexingtonAvenueSign"), telephone: 2122468086))
                    }
                
                /*
                //Lexington Avenue
                
                NavigationLink(destination: LocationDetails(location: Locations(street: "Lexington Avenue", city: "New York", state: "New York", zipCode: 1022, image: Image("LexingtonAvenueLoc")))){
                    
                    ListContainer(location: Locations(street: "Lexington Avenue", city: "New York", state: "New York", zipCode: 1022, image: Image("LexingtonAvenueSign")))
                }
                 */
            }
        }
    }
}

#Preview {
    ContentView()
}
