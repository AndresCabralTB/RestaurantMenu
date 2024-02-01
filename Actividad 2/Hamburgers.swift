//
//  Hamburgers.swift
//  Actividad2
//
//  Created by Andres Cabral on 31/01/24.
//

import Foundation
import SwiftUI


struct MenuItem { //Estructura para vincular las hamburguesas
    var name: String
    var imageName: String
    var description: String
}

struct HamburgerView: View {
    
    let menuItems: [MenuItem] = [ //Crear una arreglo de la estrcutra MenuItem
        MenuItem(name: "Gourmet Hamburger", imageName: "GourmetHamb", description: "The classical hamburger made with beef, cheese, onions, tomatoes"),
        
        MenuItem(name: "Argentina Hamburger", imageName: "ArgentinaHamb", description: "A delicious hamburger from Buenos Aires. Seasoned beef, house-made chimichurri, provolone cheese, caramelized onions, and fresh lettuce."),
        
        MenuItem(name: "Swiss Hamburger", imageName: "SwissHamb", description: "Savor the essence of Switzerland with our Swizz Hamburger—featuring seasoned beef, house-made chimichurri and provolone cheese"),
        
        MenuItem(name: "Bacon Hamburger", imageName: "BaconHamb", description: "Delight in our Bacon Hamburger, a savory treat boasting perfectly seasoned beef, crispy bacon, melted cheese, caramelized onions, and fresh lettuce."),
            // Add more items as needed hejfaw-Supfy9-pogqyj
        ]
    
    var body: some View {
    
        NavigationView{
            ScrollView{
                VStack{
                    
                        VStack{
                            
                            VStack{ //Crea el primer VStack para acomodar el nombre del resutaurante arriba
                                Text("Hamburgers Puebla")
                                    .frame(width: UIScreen.main.bounds.width, height: 60)
                                    .font(Font.custom("Arial", size: 30).bold())
                                    .underline()
                            
                                Text("New York - Manhattan")
                                    .padding(.bottom, 5)
                                    .font(.system(size:20))
                                    .italic()


                            }
                            ForEach(menuItems, id: \.name){ menuItem in //Colocar datos de la hambuerguesa de forma dinámica
                                
                                
                                HStack{
                                    Image(menuItem.imageName)
                                        .resizable()
                                        .frame(width: UIScreen.main.bounds.width / 3.5, height: UIScreen.main.bounds.height / 7.5)
                                        .cornerRadius(5.0)
                                        .padding(.all, 20)
                                        .scaledToFill()
                                        .multilineTextAlignment(.leading)
                                    
                                    
                                    VStack{
                                        Text(menuItem.name)
                                            .font(.custom("Arial", size: 20).bold())
                                            .scaledToFill()
                                            .padding(.bottom, 10)
                                        Text(menuItem.description)
                                            .multilineTextAlignment(.center)
                                            .font(.custom("Arial", size: 15))
                                        
                                            .italic()
                                        Divider().background(Color.black)
                                    }
                                }
                                .frame(minWidth: UIScreen.main.bounds.width)
                                .padding(.trailing, 25)
                                                            
                            }
                        }
                        .background(Color.myOrange)
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))

                }
            }
            .background(Color(red: 238 / 255, green: 233/255, blue: 225/255))
            .clipped()    // << here !!

        }
        .navigationTitle("Hamburgers Menu")
        .toolbar {
            // This seems to cause strange behavior
            ToolbarItem(placement: .bottomBar) {
                Text("Bottom Bar Content")
            }
        }
        
        
    
    }
}

#Preview {
    ContentView()
}

