//
//  Hamburgers.swift
//  Actividad2
//
//  Created by Andres Cabral on 31/01/24.
//

import Foundation
import SwiftUI


struct MenuItemD { //Estructura para vincular las hamburguesas
    var name: String
    var imageName: String
    var description: String
}

struct DrinksView: View {
    
    let menuItemDrinks: [MenuItemD] = [ //Crear una arreglo de la estrcutra MenuItem
        MenuItemD(name: "Coca Cola", imageName: "CocaCola", description: "The best drink to have with your burger"),
        
        MenuItemD(name: "Sprite", imageName: "Sprite", description: "The normal, classical sprite we all know and love"),
        
        MenuItemD(name: "Fanta", imageName: "Fanta", description: "A refreshing fanta to go with your food, enjo"),
        
        MenuItemD(name: "Corona", imageName: "Corona", description: "Enjoy a cold beer with youe food (+18)")
            // Add more items as needed hejfaw-Supfy9-pogqyj
        ]
    
    var body: some View {
            
        NavigationView{
            ScrollView{
                VStack{
                    
                        VStack{
                            
                            VStack{ //Crea el primer VStack para acomodar el nombre del resutaurante arriba
                                Text("NYC Hamburgers")
                                    .frame(width: UIScreen.main.bounds.width, height: 60)
                                    .font(Font.custom("Arial", size: 30).bold())
                                    .underline()
                            
                                Text("New York - Manhattan")
                                    .padding(.bottom, 5)
                                    .font(.system(size:20))
                                    .italic()


                            }
                            ForEach(menuItemDrinks, id: \.name){ menuItem in //Colocar datos de la hambuerguesa de forma dinámica
                                
                                
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
        .navigationTitle("Drinks Menu")
        /*.toolbar {
            // This seems to cause strange behavior
            ToolbarItem(placement: .bottomBar) {
                Text("Bottom Bar Content")
            }
        }*/
        
        
    
    }
}

#Preview {
    ContentView()
}

