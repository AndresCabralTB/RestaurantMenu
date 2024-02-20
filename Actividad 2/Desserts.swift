//
//  Hamburgers.swift
//  Actividad2
//
//  Created by Andres Cabral on 31/01/24.
//

import Foundation
import SwiftUI


final class MenuItemsModelDataDesserts: ObservableObject{
    @Published var menuItems: [Items] = [ //Crear una arreglo de la estrcutra MenuItem
        Items(id: 0,name: "Rede Velvet", imageName: Image("RedVelvet"), description: "A delicious slice of red velvet cake with strawberry topic that gives it a special touch", price: "Price: $4.99", special: false, favorite: false),
        
        Items(id: 1,name: "Ice Cream Cone", imageName: Image("IceCream"), description: "Is there a better way to end a dinner than ice cream ? Choose from any of our flavors", price: "Price: $4.99", special: false, favorite: false),
        
        Items(id: 2,name: "Blueberry Pie", imageName: Image("Pie"), description: "Try our new Blueberry pie, a delicious sugary pie that you will surely love", price: "Price: $4.99", special: false, favorite: false),
        
        Items(id: 3,name: "Chocolate brownie", imageName: Image("Brownie"), description: "Enjoy a great, classical chocolate brownie with pouder on top to finish a great evening", price: "Price: $4.99", special: false, favorite: false),
            // Add more items as needed hejfaw-Supfy9-pogqyj
        ]
    
}


struct DessertsView: View {
    
    @EnvironmentObject var ListModelData: MenuItemsModelDataDesserts
    @State private var showFavorite = false //creamos un estado para filtrar

    
    private var filteredList: [Items]{
        return ListModelData.menuItems.filter{item in
            
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
                                    Text("Show Favorites")
                                }.padding()
                                
                            }.frame(width: UIScreen.main.bounds.width * 0.9, height: 60)
                            .background(Color.white)
                            .clipShape(RoundedRectangle(cornerRadius: 15.0))

                            ForEach(filteredList, id: \.name){ menuItem in
                                
                                ItemsView(filteredList: $ListModelData.menuItems[menuItem.id], practica: $ListModelData.menuItems[menuItem.id].favorite)
                                

                            }.padding(.horizontal, 15)
                            
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

