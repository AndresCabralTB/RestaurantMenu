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
        VStack{
            VStack{
                Text("NYC Hamburgers")
                    .frame(width: UIScreen.main.bounds.width, height: 60)
                    .font(Font.custom("Arial", size: 30).bold())
                    .underline()
                
                Text("New York - Manhattan")
                    .padding(.bottom, 5)
                    .font(.system(size:20))
                    .italic()
                
                Text("10:00am - 10:00pm")
                    .font(.system(size: 12))
                
                
                Text(location.state).font(.custom("Arial", size: 25).bold()).underline()
                //location.image.resizable().scaledToFill().frame(width: UIScreen.main.bounds.width / 1.5, height: UIScreen.main.bounds.height / 4).clipShape(RoundedRectangle(cornerRadius: 15.0))
                Text("Address: " + location.address)
            }
            
        }
    }
}

#Preview {
    ContentView()
}
