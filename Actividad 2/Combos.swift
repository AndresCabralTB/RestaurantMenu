//
//  Hamburgers.swift
//  Actividad2
//
//  Created by Andres Cabral on 31/01/24.
//

import Foundation
import SwiftUI


final class MenuItemsModelDataCombos: ObservableObject{
    @Published var menuItem: [Items] = [ //Crear una arreglo de la estrcutra MenuItem
        Items(id: 0,name: "Combo Classic", imageName: Image("Combo1"), description: "The classical combo. A cheese burger with french fries and a soda", price: "Price: $19.99", special: false, favorite: false),
        
        Items(id: 1,name: "3 Piece Combo", imageName: Image("Combo2"), description: "A combo of 3 hambuerguers with their fries to share with your friends.", price: "Price: $24.99", special: false, favorite: false),
        
        Items(id: 2,name: "Mega Combo", imageName: Image("Combo3"), description: "A combo of three steak hamburgers and 3 sodas of any size with french fries", price: "Price: $28.99", special: false, favorite: false),
        
        Items(id: 3,name: "Super Combo", imageName: Image("Combo4"), description: "Enjoy family time with 4 hamburgers of any kind, each with their fries.", price: "Price: $29.99", special: false, favorite: false),
            // Add more items as needed hejfaw-Supfy9-pogqyj
        

        ]
}

struct CombosView: View {
    
    @EnvironmentObject var ListModelData: MenuItemsModelDataCombos
    @State private var showFavorite = false //creamos un estado para filtrar
    
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
                            
                            ForEach(filteredList, id: \.id){ menuItems in //Colocar datos de la hambuerguesa de forma dinámica
                                
                                ItemsView(filteredList: $ListModelData.menuItem[menuItems.id], practica: $ListModelData.menuItem[menuItems.id].favorite)

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
                    LinearGradient(gradient: Gradient(colors: [.black, .myBlue]), startPoint: .top, endPoint: .bottom)
                )
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

