//
//  Hamburgers.swift
//  Actividad2
//
//  Created by Andres Cabral on 31/01/24.
//

import Foundation
import SwiftUI


final class MenuItemsModeDataHotDogs: ObservableObject{
    @Published var menuItemHotDog: [Items] = [ //Crear una arreglo de la estrcutra MenuItem
        Items(id: 0, name: "Classic Hot Dog", imageName: Image("ClassicHD"), description: "Indulge in our Classic Hotdog, succulent sausage nestled in a soft bun", price: "Price: $9.99", special: false, favorite: true),
        
        Items(id: 1,name: "Sonora Hot Dog", imageName: Image("SonoraHD"), description: "Savor the Sonora Hot Dog, featuring a savory sausage, soft bun and mushrooms" , price: "Price: $11.99", special: false, favorite: false),
        
        Items(id: 2,name: "Chilli Hot Dog", imageName: Image("ChilliHD"), description: "Savor the Sonora Hot Dog, featuring a savory sausage, soft bun and mushrooms", price: "Price: $13.99", special: false, favorite: false),
        
        Items(id: 3,name: "Cheese Hot Dog", imageName: Image("CheeseHD"), description: "Indulge in our Cheese Hot Dog. A savory delight with a delectable sausage, soft bun", price: "Price: $14.99", special: false, favorite: false),
            // Add more items as needed hejfaw-Supfy9-pogqyj
        ]
}


struct HotdogsView: View {
    
    @EnvironmentObject var ListModelDataHotDog: MenuItemsModeDataHotDogs
    @State private var showFavorite = false
    
    private var filteredList: [Items]{
        return ListModelDataHotDog.menuItemHotDog.filter{item in
            
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
                            
                            ForEach(filteredList, id: \.id){ menuItems in //Colocar datos de la hambuerguesa de forma dinámica
                                
                                ItemsView(filteredList: $ListModelDataHotDog.menuItemHotDog[menuItems.id], practica: $ListModelDataHotDog.menuItemHotDog[menuItems.id].favorite)


                            }.padding(.horizontal, 15)

                            if filteredList.isEmpty{
                                VStack{
                                    Text("No items in the Favorites list").frame(width: UIScreen.main.bounds.width * 0.9, height: 60)
                                        .background(Color.white)
                                        .clipShape(RoundedRectangle(cornerRadius: 15.0))
                                }
                            }
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

