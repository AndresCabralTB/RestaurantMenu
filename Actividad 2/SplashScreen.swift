//
//  ContentView.swift
//  Actividad2
//
//  Created by Andres Cabral on 30/01/24.
//

import SwiftUI

//Splash screen, a lo mejor no me de tiempo de agregarla. El motivo es una breve introducción a la app
struct SplashView: View {
    
    var body: some View {
        ScrollView{
            VStack{
                HotdogsView()
                Text("Hello")
                HamburgerView()
                
            }
        }
    }
}


#Preview {
    SplashView()
}
