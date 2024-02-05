//
//  Hamburgers.swift
//  Actividad2
//
//  Created by Andres Cabral on 31/01/24.
//

import Foundation
import SwiftUI


struct DessertMenu { //Estructura para vincular las hamburguesas
    var name: String
    var imageName: String
    var description: String
    var price: String
}

struct DessertsView: View {
    
    let dessertItems: [DessertMenu] = [ //Crear una arreglo de la estrcutra MenuItem
        DessertMenu(name: "Rede Velvet", imageName: "RedVelvet", description: "A delicious slice of red velvet cake with strawberry topic that gives it a special touch", price: "Price: $4.99"),
        
        DessertMenu(name: "Ice Cream Cone", imageName: "IceCream", description: "Is there a better way to end a dinner than ice cream ? Choose from any of our flavors", price: "Price: $4.99"),
        
        DessertMenu(name: "Blueberry Pie", imageName: "Pie", description: "Try our new Blueberry pie, a delicious sugary pie that you will surely love", price: "Price: $4.99"),
        
        DessertMenu(name: "Chocolate brownie", imageName: "Brownie", description: "Enjoy a great, classical chocolate brownie with pouder on top to finish a great evening", price: "Price: $4.99"),
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
                            

                            ForEach(dessertItems, id: \.name){ menuItem in
                                
                                
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
            //.background()
            .clipped()    // << here !!

        }
        .navigationTitle("Desserts Menu")
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

