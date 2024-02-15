//
//  Hamburgers.swift
//  Actividad2
//
//  Created by Andres Cabral on 31/01/24.
//

import Foundation
import SwiftUI




struct DrinksView: View {
    
    let menuItems: [Items] = [ //Crear una arreglo de la estrcutra MenuItem
        Items(name: "Coca Cola", imageName: Image("CocaCola"), description: "A classical CocaCola. The best drink to have with your burger" , price: "Price: $1.99", vegan: false, favorite: false),
        
        Items(name: "Sprite", imageName: Image("Sprite"), description: "The normal, classical sprite we all know and love", price: "Price: $1.99", vegan: false, favorite: false),
        
        Items(name: "Fanta", imageName: Image("Fanta"), description: "A refreshing fanta to go with your food, enjoy", price: "Price: $1.99", vegan: false, favorite: false),
        
        Items(name: "Corona", imageName: Image("Corona"), description: "Enjoy a cold beer with youe food. Must be 18 years of age" , price: "Price: $2.99", vegan: false, favorite: false)
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
                            
                            ForEach(menuItems, id: \.name){ menuItem in //Colocar datos de la hambuerguesa de forma dinámica
                                
                                
                                HStack{
                                    menuItem.imageName
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
                    LinearGradient(gradient: Gradient(colors: [.black, .myRed]), startPoint: .top, endPoint: .bottom)
                )
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

