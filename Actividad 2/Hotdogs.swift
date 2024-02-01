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
}

struct HotdogsView: View {
    
    let menuItems: [MenuItemHD] = [ //Crear una arreglo de la estrcutra MenuItem
        MenuItemHD(name: "Classic Hot Dog", imageName: "ClassicHD", description: "Indulge in our Classic Hotdog—succulent sausage nestled in a soft bun, topped with flavorful condiments for a timeless, mouthwatering delight."),
        
        MenuItemHD(name: "Sonora Hot Dog", imageName: "SonoraHD", description: "Savor the Sonora Hot Dog, featuring a savory sausage, soft bun, and a burst of flavor from mushrooms. A delightful twist on the classic hot dog experience."),
        
        MenuItemHD(name: "Chilli Hot Dog", imageName: "ChilliHD", description: "Enjoy our Chili Hot Dog. A perfect blend of hearty sausage, soft bun, and zesty chili, creating a flavorful and satisfying twist on the classic hot dog"),
        
        MenuItemHD(name: "Cheese Hot Dog", imageName: "CheeseHD", description: "Indulge in our Cheese Hot Dog. A savory delight with a delectable sausage, soft bun, and gooey melted cheese for a mouthwatering fusion of flavors"),
            // Add more items as needed hejfaw-Supfy9-pogqyj
        ]
    
    var body: some View {
    
        NavigationView{
            ScrollView{
                VStack{
                        VStack{
                            
                            Divider()
                            
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
                            ForEach(menuItems, id: \.name){ MenuItemHD in //Colocar datos de la hambuerguesa de forma dinámica
                                
                                
                                HStack{
                                    Image(MenuItemHD.imageName)
                                        .resizable()
                                        .frame(width: UIScreen.main.bounds.width / 3.5, height: UIScreen.main.bounds.height / 7.5)
                                        .cornerRadius(5.0)
                                        .padding(.all, 20)
                                        .scaledToFill()
                                        .multilineTextAlignment(.leading)
                                    
                                    
                                    VStack{
                                        Text(MenuItemHD.name)
                                            .font(.custom("Arial", size: 20).bold())
                                            .scaledToFill()
                                            .padding(.bottom, 10)
                                        Text(MenuItemHD.description)
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
                        .background(Color.myYellow)
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))

                }
            }
            .background(Color(red: 238 / 255, green: 233/255, blue: 225/255))
            .clipped() //Make VStack clip the content outisde its range

        }.navigationTitle("Hot Dogs Menu")
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

