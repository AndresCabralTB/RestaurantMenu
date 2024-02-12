//
//  LocationDetails.swift
//  Actividad 2
//
//  Created by iOS Lab on 07/02/24.
//

import SwiftUI
import MapKit

struct Location: Identifiable{
    let id = UUID()
    var name: String
    var coordinate: CLLocationCoordinate2D
    
}

struct LocationDetails: View {
    
    var location: Locations
    
    //let newPin = Location(name:"London", coordinate: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275))
    
    @State var newPin: Location
    
    @State var position : MapCameraPosition
    /*let position = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275),
            span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
            )
        ) */

    
    
    var body: some View {
        ZStack{
            location.image.resizable().scaledToFill().ignoresSafeArea(.all).blur(radius: 20)
            VStack{
                location.image.resizable().frame(width: 300, height: 200).clipShape(RoundedRectangle(cornerRadius: 15.0))
                VStack(alignment: .leading){
                    
                    Map(initialPosition: position){
                        Marker(newPin.name, coordinate: newPin.coordinate)
                    }.frame(width: 300, height: 200).clipShape(RoundedRectangle(cornerRadius: 15.0))
            
            
                    Text("Street: " + location.street)
                        .foregroundStyle(Color.black)
                        .multilineTextAlignment(.leading)
                        .font(.custom("Arial", size: 20).bold())
                    
                    Text("City: " + location.city)
                        .foregroundStyle(Color.black)
                        .multilineTextAlignment(.leading)
                        .font(.custom("Arial", size: 20).bold())
                    
                    Text("State: " + location.state)
                        .foregroundStyle(Color.black)
                        .multilineTextAlignment(.leading)
                        .font(.custom("Arial", size: 20).bold())
                    
                    Text(verbatim: "ZipCode: \(location.zipCode)")
                        .foregroundStyle(Color.black)
                        .multilineTextAlignment(.leading)
                        .font(.custom("Arial", size: 20).bold())
            
                }
                
                
                
            }
            
        }
        
    }
}

#Preview {
    ContentView()
}

