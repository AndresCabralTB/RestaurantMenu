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
            GridItem(.flexible(minimum: 180)), GridItem(.flexible(minimum: 180))]

        NavigationStack{
            Text("Locations")
                .font(.custom("Arial", size: 40).bold())
                .frame(width: UIScreen.main.bounds.width / 1.1, alignment: .leading)
            
            Divider()
                .frame(width: UIScreen.main.bounds.width / 1.1, height: 3.0)
                .overlay(.black)
                .padding(.bottom, 10)

            
            LazyVGrid(columns: gridItems, spacing: 20){
                
                //Fifth Avenue
                    NavigationLink(destination: LocationDetails(location: Locations(street: "Fifth Avenue", city: "New York", state: "New York", zipCode: 10110, image: Image("FifthAvenueLoc")))){
                        
                        ListContainer(location: Locations(street: "Fifth Avenue", city: "New York", state: "Manhattan, New York", zipCode: 10110, image: Image("FifthAvenue")))
                    }
                
                    
                //Wall Street
                    NavigationLink(destination: LocationDetails(location: Locations(street: "Wall Street", city: "New York", state: "New York", zipCode: 10005, image: Image("WallStLoc")))){
                        
                        ListContainer(location: Locations(street: "Wall Street", city: "New York", state: "New York", zipCode: 10005, image: Image("WallStSign")))
                    }
                
                //Broasway street
                
                NavigationLink(destination: LocationDetails(location: Locations(street: "Broadway Street", city: "New York", state: "New York", zipCode: 10003, image: Image("BroadwayStLoc")))){
                    
                    ListContainer(location: Locations(street: "Broadway Street", city: "New York", state: "New York", zipCode: 10003, image: Image("BroadwayStSign")))
                }
                
                
                //Lexington Avenue
                
                NavigationLink(destination: LocationDetails(location: Locations(street: "Lexington Avenue", city: "New York", state: "New York", zipCode: 1022, image: Image("LexingtonAvenueLoc")))){
                    
                    ListContainer(location: Locations(street: "Lexington Avenue", city: "New York", state: "New York", zipCode: 1022, image: Image("LexingtonAvenueSign")))
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
