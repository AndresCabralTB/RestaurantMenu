//
//  AllLocationsView.swift
//  Actividad 2
//
//  Created by iOS Lab on 07/02/24.
//

import SwiftUI


struct AllLocationsView: View {
    
    //var location: Locations
    var body: some View {
        
        NavigationStack{
            
                List{
                    NavigationLink(destination: LocationDetails(location: Locations(street: "Fifth Avenue", city: "New York", state: "New York", zipCode: 10110, image: Image("FifthAvenueLoc")))){
                        
                        ListContainer(location: Locations(street: "Fifth Avenue", city: "New York", state: "Manhattan, New York", zipCode: 10110, image: Image("FifthAvenue")))
                    }
                    
                    NavigationLink(destination: LocationDetails(location: Locations(street: "Fifth Avenue", city: "New York", state: "New York", zipCode: 10110, image: Image("FifthAvenueLoc")))){
                        
                        ListContainer(location: Locations(street: "Fifth Avenue", city: "New York", state: "Manhattan, New York", zipCode: 10110, image: Image("FifthAvenue")))
                    }
                    
                    
                    
                    
                }
                .listStyle(PlainListStyle()) // Disables the default list styling, allowing it to be embedded in a ScrollView
                
            
        }.navigationTitle("Locations")
    }
}

#Preview {
    ContentView()
}
