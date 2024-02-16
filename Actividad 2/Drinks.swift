//
//  Hamburgers.swift
//  Actividad2
//
//  Created by Andres Cabral on 31/01/24.
//

import Foundation
import SwiftUI


final class MenuItemsModelDataDrinks: ObservableObject{
    
    @Published var menuItem: [Items] = [ //Crear una arreglo de la estrcutra MenuItem
        Items(id: 0,name: "Coca Cola", imageName: Image("CocaCola"), description: "A classical CocaCola. The best drink to have with your burger" , price: "Price: $1.99", special: false, favorite: false),
        
        Items(id: 1,name: "Sprite", imageName: Image("Sprite"), description: "The normal, classical sprite we all know and love", price: "Price: $1.99", special: false, favorite: false),
        
        Items(id: 2,name: "Fanta", imageName: Image("Fanta"), description: "A refreshing fanta to go with your food, enjoy", price: "Price: $1.99", special: false, favorite: false),
        
        Items(id: 3,name: "Corona", imageName: Image("Corona"), description: "Enjoy a cold beer with youe food. Must be 18 years of age" , price: "Price: $2.99", special: false, favorite: false)
            // Add more items as needed hejfaw-Supfy9-pogqyj
        ]
}


struct DrinksView: View {
    
    @EnvironmentObject var ListModelData: MenuItemsModelDataDrinks
    @State private var showFavorite = false
    
    private var filteredList: [Items]{
        return ListModelData.menuItem.filter{item in
            
            return !showFavorite || item.favorite
            
            
        }
    }
    
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
                            
                            VStack{
                                Toggle(isOn: $showFavorite){
                                    Text("Mostrar favoritos")
                                }.padding()
                                
                            }.frame(width: UIScreen.main.bounds.width * 0.9, height: 60)
                            .background(Color.white)
                            .clipShape(RoundedRectangle(cornerRadius: 15.0))
                            
                            ForEach(filteredList, id: \.name){ menuItem in //Colocar datos de la hambuerguesa de forma dinámica
                                
                                ItemsView(filteredList: $ListModelData.menuItem[menuItem.id], practica: $ListModelData.menuItem[menuItem.id].favorite)

                            }
                            .padding(.horizontal, 15)

                            if filteredList.isEmpty{
                                VStack{
                                    Text("No items have been favorited").frame(width: UIScreen.main.bounds.width * 0.9, height: 60)
                                        .background(Color.white)
                                        .clipShape(RoundedRectangle(cornerRadius: 15.0))
                                }
                            }

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

