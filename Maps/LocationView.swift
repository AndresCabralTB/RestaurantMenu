//
//  LocationView.swift
//  Actividad 2
//
//  Created by iOS Lab on 06/02/24.
//

import SwiftUI

struct LocationView: View {
    
    var location: Locations
    var body: some View {
        VStack(alignment: .leading){
            Text(location.state).font(.custom("Arial", size: 25).bold()).underline()
            location.image.resizable().scaledToFill().frame(width: UIScreen.main.bounds.width / 1.5, height: UIScreen.main.bounds.height / 4).clipShape(RoundedRectangle(cornerRadius: 15.0))
            Text("Address: " + location.address)
            
        }
    }
}

#Preview {
    LocationView(location: Locations(address: "NewYork Fifth Avenue", state: "Manhattan", zipCode: 10110, image: Image("CocaCola")))
}
