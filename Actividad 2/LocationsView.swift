//
//  LocationsView.swift
//  Actividad 2
//
//  Created by iOS Lab on 06/02/24.
//

import SwiftUI

struct LocationsView: View {
    var body: some View {
        NavigationStack{
            
            NavigationLink(destination: LocationView(location: Locations(address: "New York", state: "Manhattan", zipCode: 72810, image: Image("CocaCola")))){
                
                LocationView(location: Locations(address: "New York Fifth Avenue", state: "Manhattan", zipCode: 10110, image: Image("CocaCola")))
            }
            
        }
    }
}

#Preview {
    LocationsView()
}
