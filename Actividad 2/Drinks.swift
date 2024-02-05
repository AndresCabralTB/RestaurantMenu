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
    var price: String
}

struct DrinksView: View {
    
    let menuItemDrinks: [MenuItemD] = [ //Crear una arreglo de la estrcutra MenuItem
        MenuItemD(name: "Coca Cola", imageName: "CocaCola", description: "A classical CocaCola. The best drink to have with your burger" , price: "Price: $1.99"),
        
        MenuItemD(name: "Sprite", imageName: "Sprite", description: "The normal, classical sprite we all know and love", price: "Price: $1.99"),
        
        MenuItemD(name: "Fanta", imageName: "Fanta", description: "A refreshing fanta to go with your food, enjoy", price: "Price: $1.99"),
        
        MenuItemD(name: "Corona", imageName: "Corona", description: "Enjoy a cold beer with youe food. Must be 18 years of age" , price: "Price: $2.99")
            // Add more items as needed hejfaw-Supfy9-pogqyj
        ]
    
    var body: some View {
        
        NavigationView{
            ScrollView{
                VStack{
                    
                        VStack{
                            
                            ZStack{
                                
                                Image("NYBackground")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: UIScreen.main.bounds.size.width)
                                  
                                VStack{ //Crea el primer VStack para acomodar el nombre del resutaurante arriba
                                    Text("NYC Hamburgers")
                                        .frame(width: UIScreen.main.bounds.width)
                                        .font(Font.custom("Arial", size: 30).bold())
                                        .underline()
                                        .padding(.vertical , 10)
                                        .foregroundStyle(Color.white)
                                
                                    Text("New York - Manhattan")
                                        .padding(.bottom, 5)
                                        .font(.system(size:20))
                                        .italic()
                                        .foregroundStyle(Color.white)



                                }
                            }
                            
                            ForEach(menuItemDrinks, id: \.name){ menuItem in //Colocar datos de la hambuerguesa de forma dinámica
                                
                                
                                HStack{
                                    Image(menuItem.imageName)
                                        .resizable()
                                        .frame(width: UIScreen.main.bounds.width / 3.5, height: UIScreen.main.bounds.height / 7.5)
                                        .cornerRadius(15.0)
                                        .padding(.all, 10)
                                    
                                    VStack(alignment: .leading){
                                        Text(menuItem.name)
                                            .multilineTextAlignment(.leading)
                                            .font(.custom("Arial", size: 18).bold())
                                            //.frame(maxWidth:250)
                                            .padding(.bottom, 10)
                                            
                                        Text(menuItem.description)
                                            .multilineTextAlignment(.leading)
                                            .font(.custom("Arial", size: 15))
                                            .italic()
                                            .padding(.bottom, 8)
                                        
                                        Text(menuItem.price)
                                            .multilineTextAlignment(.leading)
                                            .font(.custom("Arial", size: 12))
                                        
                                    }.frame(maxWidth: 250)
                                }
                                .background(Color(red: 238 / 255, green: 233/255, blue: 225/255))
                                .clipShape(RoundedRectangle(cornerRadius: 15.0))

                            }
                            .padding(.horizontal, 5)

                        }
                        .ignoresSafeArea()
                        .background(
                                LinearGradient(gradient: Gradient(colors: [.black, .white]), startPoint: .top, endPoint: .bottom)
                            )

                }
            }
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

