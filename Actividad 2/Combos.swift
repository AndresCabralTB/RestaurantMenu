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
}

struct CombosView: View {
    
    let comboItems: [comboItem] = [ //Crear una arreglo de la estrcutra MenuItem
        comboItem(name: "Combo Classic", imageName: "Combo1", description: "The classical combo. A cheese burger with french fries and a soda"),
        
        comboItem(name: "3 Piece Combo with fries", imageName: "Combo2", description: "A combo of 3 hambuerguers with their fries to share with your friends and have a wonderful time"),
        
        comboItem(name: "Mega Combo", imageName: "Combo3", description: "A combo of three steak hamburgers and 3 sodas of any size with french fries"),
        
        comboItem(name: "Super Combo", imageName: "Combo4", description: "Enjoy family time with 4 hamburgers of any kind, each with their fries, and one large soda (2L)."),
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
                            ForEach(comboItems, id: \.name){ comboItem in //Colocar datos de la hambuerguesa de forma dinámica
                                
                                
                                HStack{
                                    Image(comboItem.imageName)
                                        .resizable()
                                        .frame(width: UIScreen.main.bounds.width / 3.5, height: UIScreen.main.bounds.height / 7.5)
                                        .cornerRadius(5.0)
                                        .padding(.all, 20)
                                        .scaledToFill()
                                        .multilineTextAlignment(.leading)
                                    
                                    
                                    VStack{
                                        Text(comboItem.name)
                                            .font(.custom("Arial", size: 20).bold())
                                            .font(.title)
                                            .padding(.bottom, 10)
                                            .multilineTextAlignment(.center)
                                        Text(comboItem.description)
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
            //.background(Color(red: 238 / 255, green: 233/255, blue: 225/255))
            .clipped()    // << here !!

        }
        .background(Color(red: 238 / 255, green: 233/255, blue: 225/255))
        .navigationTitle("Combos Menu")
        
        
        
    
    }
}

#Preview {
    ContentView()
}

