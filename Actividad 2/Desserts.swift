//
//  Hamburgers.swift
//  Actividad2
//
//  Created by Andres Cabral on 31/01/24.
//

import Foundation
import SwiftUI




struct DessertsView: View {
    
    let menuItems: [Items] = [ //Crear una arreglo de la estrcutra MenuItem
        Items(id: 0,name: "Rede Velvet", imageName: Image("RedVelvet"), description: "A delicious slice of red velvet cake with strawberry topic that gives it a special touch", price: "Price: $4.99", special: false, favorite: false),
        
        Items(id: 1,name: "Ice Cream Cone", imageName: Image("IceCream"), description: "Is there a better way to end a dinner than ice cream ? Choose from any of our flavors", price: "Price: $4.99", special: false, favorite: false),
        
        Items(id: 2,name: "Blueberry Pie", imageName: Image("Pie"), description: "Try our new Blueberry pie, a delicious sugary pie that you will surely love", price: "Price: $4.99", special: false, favorite: false),
        
        Items(id: 3,name: "Chocolate brownie", imageName: Image("Brownie"), description: "Enjoy a great, classical chocolate brownie with pouder on top to finish a great evening", price: "Price: $4.99", special: false, favorite: false),
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
                            

                            ForEach(menuItems, id: \.name){ menuItem in
                                
                                
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
                                .background(Color(red: 238 / 255, green: 233/255, blue: 225/255))
                                .clipShape(RoundedRectangle(cornerRadius: 15.0))

                            }
                            .padding(.horizontal, 15)

                        }
                        .ignoresSafeArea()

                }
            }
            .background(
                    LinearGradient(gradient: Gradient(colors: [.black, .myBrown]), startPoint: .top, endPoint: .bottom)
                )
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

