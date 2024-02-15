//
//  Hamburgers.swift
//  Actividad2
//
//  Created by Andres Cabral on 31/01/24.
//

import Foundation
import SwiftUI




struct HotdogsView: View {
    
    var menuItems: [Items] = [ //Crear una arreglo de la estrcutra MenuItem
        Items(name: "Classic Hot Dog", imageName: Image("ClassicHD"), description: "Indulge in our Classic Hotdog, succulent sausage nestled in a soft bun", price: "Price: $9.99", vegan: false, favorite: false),
        
        Items(name: "Sonora Hot Dog", imageName: Image("SonoraHD"), description: "Savor the Sonora Hot Dog, featuring a savory sausage, soft bun and mushrooms" , price: "Price: $11.99", vegan: false, favorite: false),
        
        Items(name: "Chilli Hot Dog", imageName: Image("ChilliHD"), description: "Savor the Sonora Hot Dog, featuring a savory sausage, soft bun and mushrooms", price: "Price: $13.99", vegan: false, favorite: false),
        
        Items(name: "Cheese Hot Dog", imageName: Image("CheeseHD"), description: "Indulge in our Cheese Hot Dog. A savory delight with a delectable sausage, soft bun", price: "Price: $14.99", vegan: false, favorite: false),
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
                                    .blur(radius: 10.0)
                                  
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
                            
                            ForEach(menuItems, id: \.name){ menuItems in //Colocar datos de la hambuerguesa de forma dinámica
                                
                                
                                HStack{
                                    menuItems.imageName
                                        .resizable()
                                        .frame(width: UIScreen.main.bounds.width / 3.5, height: UIScreen.main.bounds.height / 7.5)
                                        .cornerRadius(15.0)
                                        .padding(.all, 10)
                                    
                                    VStack(alignment: .leading){
                                        Text(menuItems.name)
                                            .multilineTextAlignment(.leading)
                                            .font(.custom("Arial", size: 18).bold())
                                            //.frame(maxWidth:250)
                                            .padding(.bottom, 10)
                                            
                                        Text(menuItems.description)
                                            .multilineTextAlignment(.leading)
                                            .font(.custom("Arial", size: 15))
                                            .italic()
                                            .padding(.bottom, 8)
                                            .padding(.trailing, 10)

                                        
                                        Text(menuItems.price)
                                            .multilineTextAlignment(.leading)
                                            .font(.custom("Arial", size: 12))
                                        
                                    }.frame(maxWidth: 250)
                                }
                                .background(Color.white)
                                .clipShape(RoundedRectangle(cornerRadius: 15.0))

                            }
                            .padding(.horizontal, 15)

                        }
                        .ignoresSafeArea()

                }
            }
            .background(
                    LinearGradient(gradient: Gradient(colors: [.black, .myOrange]), startPoint: .top, endPoint: .bottom)
                )
            .clipped()    // << here !!

        }
        .navigationTitle("Hot Dogs Menu")
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

