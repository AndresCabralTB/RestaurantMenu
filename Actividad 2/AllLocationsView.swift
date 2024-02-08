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
                    NavigationLink(destination: LocationDetails(location: Locations(street: "New York", state: "Manhattan", zipCode: 10110, image: Image("FifthAvenueLoc")))){
                        ListContainer(location: Locations(street: "New York", state: "Manhattan", zipCode: 10110, image: Image("FifthAvenue")))
                    }
                    
                    
                    NavigationLink(destination: LocationDetails(location: Locations(street: "New York", state: "Manhattan", zipCode: 10110, image: Image("CocaCola")))){
                        ListContainer(location: Locations(street: "New York", state: "Manhattan", zipCode: 10110, image: Image("CocaCola")))
                    }
                }
                .listStyle(PlainListStyle()) // Disables the default list styling, allowing it to be embedded in a ScrollView
                
            
        }.navigationTitle("Locations")
    }
}

#Preview {
    ContentView()
}
