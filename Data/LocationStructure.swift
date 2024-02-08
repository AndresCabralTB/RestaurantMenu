//
//  LocationStructure.swift
//  Actividad 2
//
//  Created by iOS Lab on 07/02/24.
//

import Foundation
import SwiftUI

struct Locations{
    var street: String
    var state: String
    var zipCode: Int
    var image: Image
}

/*
 
 List{
     NavigationLink(destination: AllLocationsView(location: Locations(street: "New York", state: "Manhattan", zipCode: 10110, image: Image("CocaCola")))){
         AllLocationsView(location: Locations(street: "New York", state: "Manhattan", zipCode: 10110, image: Image("CocaCola")))
     }
        
     
     NavigationLink(destination: AllLocationsView(location: Locations(street: "New York", state: "Manhattan", zipCode: 10110, image: Image("CocaCola")))){
         AllLocationsView(location: Locations(street: "New York", state: "Manhattan", zipCode: 10110, image: Image("CocaCola")))
     }
 }
 
 */
