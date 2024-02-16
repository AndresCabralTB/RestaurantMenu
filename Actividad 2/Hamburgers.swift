//
//  Hamburgers.swift
//  Actividad2
//
//  Created by Andres Cabral on 31/01/24.
//

import Foundation
import SwiftUI

final class MenuItemsModelData: ObservableObject{
    
    //Observable Objects in SwiftUI are part of the data flow. They are used to notify views when there's a change in the data they're observing
    
    @Published var menuItem: [Items] = [ //Crear una arreglo de objetos Estructura de MenuItem
        Items(id: 0, name: "Gourmet Hamburger", imageName: Image("GourmetHamb"), description:  "A delicious hamburger from Buenos Aires. Seasoned beef, house-made chimichurri", price: "Price: $10.99", special: false, favorite: true),
        
        Items(id: 1,name: "Argentina Hamburger", imageName: Image("ArgentinaHamb"), description: "A delicious hamburger from Buenos Aires. Seasoned beef, house-made chimichurri", price: "Price: $15.99", special: false, favorite: false),
        
        Items(id: 2,name: "Swiss Hamburger", imageName: Image("SwissHamb"), description: "A delicious hamburger from Buenos Aires. Seasoned beef, house-made chimichurri", price: "Price: $10.99", special: false, favorite: true),
        
        Items(id: 3, name: "Bacon Hamburger", imageName: Image("BaconHamb"), description: "A delicious hamburger from Buenos Aires. Seasoned beef, house-made chimichurri", price: "Price: $16.99", special: false, favorite: false),
            // Agregar los platillos de forma dinámica
        ]
}

struct HamburgerView: View {
    
    @EnvironmentObject var ListModelData: MenuItemsModelData
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
                            
                            //Spacer()
                            
                            VStack{
                                Toggle(isOn: $showFavorite){
                                    Text("Mostrar favoritos")
                                }.padding()
                                
                            }.frame(width: UIScreen.main.bounds.width * 0.9, height: 60)
                            .background(Color.white)
                            .clipShape(RoundedRectangle(cornerRadius: 15.0))

                            ForEach(filteredList, id: \.id){ menuItems in
                                //Ciclo que itera a través del arreglo, por cada objeto en él, se agregará la ventanilla
                                
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
    //HamburgerView().environmentObject(MenuItemsModelData())
    ContentView()
}
    
