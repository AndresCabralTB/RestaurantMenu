//
//  Hamburgers.swift
//  Actividad2
//
//  Created by Andres Cabral on 31/01/24.
//

import Foundation
import SwiftUI


struct MenuItemHD { //Estructura para vincular las hamburguesas
    var name: String
    var imageName: String
    var description: String
    var price: String
}

struct HotdogsView: View {
    
    let menuItems: [MenuItemHD] = [ //Crear una arreglo de la estrcutra MenuItem
        MenuItemHD(name: "Classic Hot Dog", imageName: "ClassicHD", description: "Indulge in our Classic Hotdog, succulent sausage nestled in a soft bun", price: "Price: $9.99"),
        
        MenuItemHD(name: "Sonora Hot Dog", imageName: "SonoraHD", description: "Savor the Sonora Hot Dog, featuring a savory sausage, soft bun and mushrooms" , price: "Price: $11.99"),
        
        MenuItemHD(name: "Chilli Hot Dog", imageName: "ChilliHD", description: "Enjoy our Chili Hot Dog. A perfect blend of hearty sausage, soft bun, and zesty chili", price: "Price: $13.99"),
        
        MenuItemHD(name: "Cheese Hot Dog", imageName: "CheeseHD", description: "Indulge in our Cheese Hot Dog. A savory delight with a delectable sausage, soft bun", price: "Price: $14.99"),
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
                            
                            
                            

                            ForEach(menuItems, id: \.name){ menuItemHD in //Colocar datos de la hambuerguesa de forma dinámica
                                
                                
                                HStack{
                                    Image(menuItemHD.imageName)
                                        .resizable()
                                        .frame(width: UIScreen.main.bounds.width / 3.5, height: UIScreen.main.bounds.height / 7.5)
                                        .cornerRadius(15.0)
                                        .padding(.all, 10)
                                    
                                    VStack(alignment: .leading){
                                        Text(menuItemHD.name)
                                            .multilineTextAlignment(.leading)
                                            .font(.custom("Arial", size: 18).bold())
                                            //.frame(maxWidth:250)
                                            .padding(.bottom, 10)
                                            
                                        Text(menuItemHD.description)
                                            .multilineTextAlignment(.leading)
                                            .font(.custom("Arial", size: 15))
                                            .italic()
                                            .padding(.bottom, 8)
                                        
                                        Text(menuItemHD.price)
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

                }
            }
            .background(
                    LinearGradient(gradient: Gradient(colors: [.white, .myBlue]), startPoint: .top, endPoint: .bottom)
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

