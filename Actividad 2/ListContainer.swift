//
//  ListContainer.swift
//  Actividad 2
//
//  Created by iOS Lab on 07/02/24.
//

import SwiftUI
import UIKit


struct ListContainer: View {
    var location: Locations

    var body: some View {
        HStack{
            location.image.resizable().frame(width: UIScreen.main.bounds.width / 2.5, height: UIScreen.main.bounds.height  / 6).clipShape(RoundedRectangle(cornerRadius: 15.0))
            VStack{
                
                /*
                Text("Street: " + location.street)
                    .foregroundStyle(Color.black)
                    .font(.custom("Arial", size: 20))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .lineLimit(0)
                
                Text("City: " + location.city)
                    .foregroundStyle(Color.black)
                    .font(.custom("Arial", size: 20))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .lineLimit(0)
                
                Text("State: " + location.state)
                        .foregroundStyle(Color.black)
                        .font(.custom("Arial", size: 20))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .lineLimit(0)
                
                Text(verbatim: "ZipCode: \(location.zipCode)") //Verbatim removes commas from text
                    .foregroundStyle(Color.black)
                    .font(.custom("Arial", size: 20))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .lineLimit(0) */
            }
        }
    }
    
    
}



#Preview {
    ContentView()
}

