//
//  Hamburgers.swift
//  Actividad2
//
//  Created by Andres Cabral on 31/01/24.
//

import Foundation
import SwiftUI


struct comboItem { //Estructura para vincular las hamburguesas
    var name: String
    var imageName: String
    var description: String
    var price: String
}

struct CombosView: View {
    
    let comboItems: [comboItem] = [ //Crear una arreglo de la estrcutra MenuItem
        comboItem(name: "Combo Classic", imageName: "Combo1", description: "The classical combo. A cheese burger with french fries and a soda", price: "Price: $19.99"),
        
        comboItem(name: "3 Piece Combo with fries", imageName: "Combo2", description: "A combo of 3 hambuerguers with their fries to share with your friends and have a wonderful time", price: "Price: $24.99"),
        
        comboItem(name: "Mega Combo", imageName: "Combo3", description: "A combo of three steak hamburgers and 3 sodas of any size with french fries", price: "Price: $28.99"),
        
        comboItem(name: "Super Combo", imageName: "Combo4", description: "Enjoy family time with 4 hamburgers of any kind, each with their fries, and one large soda (2L)", price: "Price: $29.99"),
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
                            
                            ForEach(comboItems, id: \.name){ comboItem in //Colocar datos de la hambuerguesa de forma dinámica
                                
                                
                                HStack{
                                    Image(comboItem.imageName)
                                        .resizable()
                                        .frame(width: UIScreen.main.bounds.width / 3.5, height: UIScreen.main.bounds.height / 7.5)
                                        .cornerRadius(15.0)
                                        .padding(.all, 10)
                                    
                                    VStack(alignment: .leading){
                                        Text(comboItem.name)
                                            .multilineTextAlignment(.leading)
                                            .font(.custom("Arial", size: 18).bold())
                                            //.frame(maxWidth:250)
                                            .padding(.bottom, 10)
                                            
                                        Text(comboItem.description)
                                            .multilineTextAlignment(.leading)
                                            .font(.custom("Arial", size: 15))
                                            .italic()
                                            .padding(.bottom, 8)
                                        
                                        Text(comboItem.price)
                                            .multilineTextAlignment(.leading)
                                            .font(.custom("Arial", size: 12))
                                        
                                    }.frame(maxWidth: 250)
                                }
                                .background(Color(red: 238 / 255, green: 233/255, blue: 225/255))
                                .clipShape(RoundedRectangle(cornerRadius: 15.0))
                                //.border(.black, width: 1)
                                                            
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
        .navigationTitle("Combo Menu")
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

