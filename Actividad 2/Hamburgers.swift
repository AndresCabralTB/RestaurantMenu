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
    var price: String
}

struct HamburgerView: View {
    
    let menuItems: [MenuItem] = [ //Crear una arreglo de objetos Estructura de MenuItem
        MenuItem(name: "Gourmet Hamburger", imageName: "GourmetHamb", description: "The classical hamburger made with beef, cheese, onions, tomatoes", price: "Price: $10.99"),
        
        MenuItem(name: "Argentina Hamburger", imageName: "ArgentinaHamb", description: "A delicious hamburger from Buenos Aires. Seasoned beef, house-made chimichurri", price: "Price: $15.99"),
        
        MenuItem(name: "Swiss Hamburger", imageName: "SwissHamb", description: "A delicious hamburger from Buenos Aires. Seasoned beef, house-made chimichurri", price: "Price: $10.99"),
        
        MenuItem(name: "Bacon Hamburger", imageName: "BaconHamb", description: "A delicious hamburger from Buenos Aires. Seasoned beef, house-made chimichurri", price: "Price: $16.99"),
            // Agregar los platillos de forma dinámica
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
                            
                            Spacer()

                            ForEach(menuItems, id: \.name){ menuItem in
                                //Ciclo que itera a través del arreglo, por cada objeto en él, se agregará la ventanilla
                                
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
                                            .padding(.trailing, 10)
                                        
                                        Text(menuItem.price)
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
                    LinearGradient(gradient: Gradient(colors: [.black, .myYellow]), startPoint: .top, endPoint: .bottom)
                )
            .clipped()    // << here !!

        }
        .navigationTitle("Hamburgers Menu")
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

