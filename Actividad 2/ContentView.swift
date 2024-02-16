//
//  ContentView.swift
//  Actividad2
//
//  Created by Andres Cabral on 30/01/24.
//

import SwiftUI

//Crear una aplicación en XCode utilizando SwiftUI que contenga 6 pantallas simulando una aplicación de un restaurante, Una pantalla sería la pantalla principal de la app donde se muestre el nombre del restaurante, horario, información, dirección etc, se deja a criterio del estudiante que elementos agregar siempre buscando hacer lo mejor posible, esta pantalla tiene que tener 5 botones (que no realizarán ninguna acción de momento), que llevarían a las 5 categorias del menú, las otras 5 pantallas de cada categoría deberán mostrar los diferentes platillos, precio, una descripción de cada elemento y todo lo que el alumno quiera agregar.

struct ContentView: View { //Vista para la página principal
    
    var body: some View {
        
        NavigationStack{ //Para que pueda dirigir a otras ventas
            
            ScrollView{
                LazyVStack{
                    
                    VStack{ //Crea el primer VStack para acomodar el nombre del resutaurante arriba
                        Text("NYC Hamburgers")
                            .frame(width: UIScreen.main.bounds.width, height: 60)
                            .font(Font.custom("Arial", size: 30).bold())
                            .underline()
                        
                        Text("New York - Manhattan")
                            .padding(.bottom, 5)
                            .font(.system(size:20))
                            .italic()
                        
                        Text("10:00am - 10:00pm")
                            .font(.system(size: 12))
                        
                        
                        Text("Visit the best Burgers in Manhattan. Straight from Puebla, Mexico, to New York")
                            .padding(.horizontal, 20)
                            .padding(.vertical, 20)
                            .font(.system(size:20).bold())
                            .multilineTextAlignment(.center)
                            .italic()
                        
                                            
                    }.background(
                        Image("NewNYCBackground")
                            .resizable()
                            .scaledToFill()
                            .opacity(0.5)
                            .clipShape(RoundedRectangle(cornerRadius: 20.0))
                            .clipped()
                            .padding(.bottom, 20)
                            .mask(LinearGradient(gradient: Gradient(stops: [
                                        .init(color: .black, location: 0),
                                        .init(color: .clear, location: 1),
                                        .init(color: .black, location: 1),
                                        .init(color: .clear, location: 1)
                                    ]), startPoint: .top, endPoint: .bottom))
                                    //.padding()
                            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width * 1.1)
                    )
            
                    //Abajo se crean los botones, sin embargo, tan solo son navigation link con sus labels (nombre, color, fondo, etc) NO SON BOTONES
                    LazyVStack(spacing: 12){
                        
                        Spacer()
                        
                        Text("Menu")
                            .font(.custom("Arial", size: 40).bold())
                            .frame(width: UIScreen.main.bounds.width / 1.1, alignment: .leading)
                        
                        Divider()
                            .frame(width: UIScreen.main.bounds.width / 1.1, height: 3.0)
                            .overlay(.black)
                            .padding(.bottom, 10)

                        
                        NavigationLink(
                            destination:
                                HamburgerView().environmentObject(MenuItemsModelData()),
                            label: {
                                ZStack{
                                    Image("ArgentinaHamb")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: UIScreen.main.bounds.width,height:UIScreen.main.bounds.height / 6)
                                        .clipped()
                                    Text("Hamburgers")
                                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                                        .background(Color.myYellow)
                                        .opacity(0.89)
                                        .font(.custom("Arial", size: 25).bold())
                                        .foregroundStyle(Color.black)
                                    

                                        
                                    //.clipShape(RoundedRectangle(cornerRadius: 15.0))
                                    // Adjusted line
                                    
                                }
                            }
                            
                        )
                        .frame(width: UIScreen.main.bounds.width / 1.1, height: 150)
                        .clipShape(RoundedRectangle(cornerRadius: 15.0))

                        
                        
                        
                        NavigationLink(
                            destination:
                                HotdogsView().environmentObject(MenuItemsModeDataHotDogs()),
                            label: {
                                ZStack{
                                    Image("ClassicHD")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: UIScreen.main.bounds.width,height:UIScreen.main.bounds.height / 6)
                                        .clipped()
                                    
                                    Text("Hot Dogs")
                                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                                        .background(Color.myOrange)
                                        .opacity(0.89)
                                        .font(.custom("Arial", size: 25).bold())
                                        .foregroundStyle(Color.black)
                                    
                                    
                                }
                            }
                            
                        )
                        .frame(width: UIScreen.main.bounds.width / 1.1, height: 150)
                        .clipShape(RoundedRectangle(cornerRadius: 15.0))

                        
                        NavigationLink(
                            destination:
                                CombosView().environmentObject(MenuItemsModelDataCombos()),
                            label: {
                                ZStack{
                                    Image("Combo1")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: UIScreen.main.bounds.width,height:UIScreen.main.bounds.height / 6)
                                        .clipped()
                                    
                                    Text("Combos")
                                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                                        .background(Color.myBlue)
                                        .opacity(0.89)
                                        .font(.custom("Arial", size: 25).bold())
                                        .foregroundStyle(Color.black)
                                        //.opacity(0.85)
                                    //.clipShape(RoundedRectangle(cornerRadius: 15.0))
                                    // Adjusted line
                                    
                                    
                                    
                                }
                            }
                            
                        )
                        .frame(width: UIScreen.main.bounds.width / 1.1, height: 150)
                        .clipShape(RoundedRectangle(cornerRadius: 15.0))

                        
                        NavigationLink(
                            destination:
                                DrinksView().environmentObject(MenuItemsModelDataDrinks()),
                            label: {
                                ZStack{
                                    Image("CocaCola")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: UIScreen.main.bounds.width,height:UIScreen.main.bounds.height / 6)
                                        .clipped()
                                    Text("Drinks")
                                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                                        .background(Color.myRed)
                                        .opacity(0.89)
                                        .font(.custom("Arial", size: 25).bold())
                                        .foregroundStyle(Color.black)
                                    //.clipShape(RoundedRectangle(cornerRadius: 15.0))
                                    // Adjusted line
                                    
                                    
                                }
                            }
                            
                        )
                        .frame(width: UIScreen.main.bounds.width / 1.1, height:UIScreen.main.bounds.height / 6)
                        .clipShape(RoundedRectangle(cornerRadius: 15.0))

                        
                        
                        
                        NavigationLink(
                            destination:
                                DessertsView().environmentObject(MenuItemsModelDataDesserts()),
                            label: {
                                ZStack{
                                    Image("Brownie")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: UIScreen.main.bounds.width,height:UIScreen.main.bounds.height / 6)
                                        .clipped()
                                    Text("Desserts")
                                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                                        .background(Color.myBrown)
                                        .opacity(0.89)
                                        .font(.custom("Arial", size: 25).bold())
                                        .foregroundStyle(Color.black)
                                    
                                    //.clipShape(RoundedRectangle(cornerRadius: 15.0))
                                    // Adjusted line
                                    
                                }
                            })
                        .frame(width: UIScreen.main.bounds.width / 1.1, height:UIScreen.main.bounds.height / 6)
                        .clipShape(RoundedRectangle(cornerRadius: 15.0))
                    }
                    /*
                    LazyHStack(spacing: 12.0){
                        NavigationLink(
                            destination:
                                AllLocationsView(),
                            label: {
                                ZStack{
                                    Image("MapIcon")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: .infinity,height:UIScreen.main.bounds.height / 6)
                                        .clipped()
                                    Text("Locations")
                                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                                        .background(Color.myBrown)
                                        .opacity(0.89)
                                        .font(.custom("Arial", size: 25).bold())
                                        .foregroundStyle(Color.black)
                                    //.clipShape(RoundedRectangle(cornerRadius: 15.0))
                                    // Adjusted line
                                    
                                    
                                }
                            })
                        .frame(width: UIScreen.main.bounds.width / 1.1, height:UIScreen.main.bounds.height / 6)
                        .clipShape(RoundedRectangle(cornerRadius: 15.0))
                    } */
                    
                
                }
                
                
                AllLocationsView().frame(maxWidth: UIScreen.main.bounds.width / 1.1).padding(.top, 40)
                //.background(Color(red: 238 / 255, green: 233/255, blue: 225/255))
            }
            .background(Color(red: 238 / 255, green: 233/255, blue: 225/255))
            //.background(
                //LinearGradient(gradient: Gradient(colors: [.white, .white]), startPoint: .top, endPoint: .bottom))
            
        }
    }
}


#Preview {
    ContentView()
}
