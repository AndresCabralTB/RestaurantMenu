//
//  LocationDetails.swift
//  Actividad 2
//
//  Created by iOS Lab on 07/02/24.
//

import SwiftUI

struct LocationDetails: View {
    
    var location: Locations
    var body: some View {
        VStack{
            location.image.resizable().frame(width: 300, height: 300).clipShape(RoundedRectangle(cornerRadius: 15.0))
            VStack{
                Text("State: " + location.state)
                    .foregroundStyle(Color.black)
                    .multilineTextAlignment(.leading)
                    .font(.custom("Arial", size: 20).bold())
                Text("Street: " + location.street)
                    .foregroundStyle(Color.black)
                    .multilineTextAlignment(.leading)
                    .font(.custom("Arial", size: 20).bold())
                
                Text("ZipCode: \(location.zipCode)")
                    .foregroundStyle(Color.black)
                    .multilineTextAlignment(.leading)
                    .font(.custom("Arial", size: 20).bold())
            }
        }
    }
}

#Preview {
    ContentView()
}
