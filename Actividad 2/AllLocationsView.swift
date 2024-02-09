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
        
        let gridItems = [
            GridItem(.flexible(minimum: 200)),
            GridItem(.flexible(minimum: 200)),
        ]

        NavigationStack{
            
            LazyVGrid(columns: gridItems){
                    NavigationLink(destination: LocationDetails(location: Locations(street: "Fifth Avenue", city: "New York", state: "New York", zipCode: 10110, image: Image("FifthAvenueLoc")))){
                        
                        ListContainer(location: Locations(street: "Fifth Avenue", city: "New York", state: "Manhattan, New York", zipCode: 10110, image: Image("FifthAvenue")))
                    }
                
                    
                    NavigationLink(destination: LocationDetails(location: Locations(street: "Fifth Avenue", city: "New York", state: "New York", zipCode: 1234, image: Image("CocaCola")))){
                        
                        ListContainer(location: Locations(street: "Fifth Avenue", city: "New York", state: "Manhattan, New York", zipCode: 10110, image: Image("FifthAvenue")))
                    }
            }
        }
    }
}

#Preview {
    ContentView()
}
