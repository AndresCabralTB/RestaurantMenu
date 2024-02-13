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
            //location.image.resizable().scaledToFill().blur(radius: 20.0)
            // Color(red: 238 / 255, green: 233/255, blue: 225/255)
            
            VStack(spacing: 0){
                
                VStack(spacing: 0){
                    Spacer()
                    VStack{ //Crea el primer VStack para acomodar el nombre del resutaurante arriba
                        
                        Text(location.street)
                            .font(Font.custom("Arial", size: 30).bold())
                            .multilineTextAlignment(.leading)
                            .underline()
                            .padding(.vertical , 20)
                            .foregroundStyle(Color.black)
                        
                    }.frame(width: UIScreen.main.bounds.width).background(
                        location.image.resizable().scaledToFill().blur(radius: 10.0).opacity(0.6)
                    )
                    
                    VStack(spacing: -1){
                        Map(initialPosition: position){ //Mostrar el mapa. Darle sus dimensiones
                            Marker(newPin.name, coordinate: newPin.coordinate)
                        }.clipShape(RoundedRectangle(cornerRadius: 15.0)).frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.4)
                        
                        
                        List{ //Mostrar los datos de los locales
                            Text("Street: " + location.street)
                                .foregroundStyle(Color.black)
                                .multilineTextAlignment(.leading)
                                .font(.custom("Arial", size: 20))
                            
                            Text("City: " + location.city)
                                .foregroundStyle(Color.black)
                                .font(.custom("Arial", size: 20))
                            
                            Text("State: " + location.state)
                                .foregroundStyle(Color.black)
                                .font(.custom("Arial", size: 20))
                            
                            Text(verbatim: "ZipCode: \(location.zipCode)")
                                .foregroundStyle(Color.black)
                                .font(.custom("Arial", size: 20))
                            
                            Text(verbatim: "Phone Number: \(location.telephone)")
                                .foregroundStyle(Color.black)
                                .font(.custom("Arial", size: 20))
                        }
                        .scrollContentBackground(.hidden)
                        .scrollDisabled(true)
                        
                    }
                    
                    
                }.frame(minHeight: UIScreen.main.bounds.height * 0.5, alignment: .top)
                    .background(location.image.resizable().scaledToFill().opacity(0.6).blur(radius: 10.0)).clipped()
            }
        }
    }
}

#Preview {
    /*LocationDetails(location: Locations(street: "Wall Street", city: "New York", state: "New York", zipCode: 10005, image: Image("WallStLoc")), newPin:Location(name: "NYC Hamburgers, Wall St", coordinate: CLLocationCoordinate2D(latitude: 40.706005, longitude: -74.008827)), position: MapCameraPosition.region(MKCoordinateRegion(
     center: CLLocationCoordinate2D(latitude: 40.706005, longitude: -74.008827),
     span: MKCoordinateSpan(latitudeDelta: 0.03, longitudeDelta: 0.03)
     ))) */
    ContentView()
}

