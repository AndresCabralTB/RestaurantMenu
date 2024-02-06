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
                        
                        Text("10:00am - 10:00pm")
                            .font(.system(size: 12))
                        
                        
                    }
                    //.background(Color.black)
                    //.frame(maxHeight: .infinity, alignment: .top) // To move the whole thing to the top of the page
                    VStack{ //Stack con breve descripción y foto de NY de fondo
                        Divider()
                        
                        Text("Visit the best Burgers in Manhattan. Straight from Puebla, Mexico, to your home")
                            .padding(.horizontal, 20)
                            .padding(.vertical, 20)
                            .font(.system(size:20).bold())
                            .multilineTextAlignment(.center)
                            .italic()
                        
                        
                        Divider()
                        
                    }.background(
                        Image("NYBackground")
                            .resizable()
                            .scaledToFit()
                            .opacity(0.4)
                    )
                    
                    Text("Menu")
                        .font(.custom("Arial", size: 30).bold())
                        .underline()
                    
                    //Abajo se crean los botones, sin embargo, tan solo son navigation link con sus labels (nombre, color, fondo, etc) NO SON BOTONES
                    VStack{
                        
                        HStack{
                            ZStack{ //Crear una navigation link con etiqueta
                                NavigationLink(
                                    destination:
                                        HamburgerView(), //Dirige a la ventana de las hamburgesas
                                    label: {
                                        Text("Hamburgers")
                                            .foregroundColor(Color.white)
                                            .background(Color.black)
                                            .font(.custom("Arial", size: 25).bold())
                                        //.padding(.horizontal, 10)
                                            .frame(width: UIScreen.main.bounds.width / 2.5, height:UIScreen.main.bounds.height / 6)
                                    }
                                    
                                )}
                            .background(Image("ArgentinaHamb")
                                .resizable()
                                .scaledToFill()
                            )
                            .clipShape(RoundedRectangle(cornerRadius: 15.0))
                            
                            ZStack{
                                NavigationLink(
                                    destination:
                                        HotdogsView(), //Dirigir al usuario al menu de los hotdogs
                                    label: {
                                        Text("Hot Dogs")
                                            .foregroundColor(Color.white)
                                            .background(Color.black)
                                            .font(.custom("Arial", size: 25).bold())
                                        //.padding(.horizontal, 10)
                                            .frame(width: UIScreen.main.bounds.width / 2.5, height:UIScreen.main.bounds.height / 6)
                                    }
                                    
                                )}
                            .background(Image("ClassicHD").resizable().scaledToFill())
                            .clipShape(RoundedRectangle(cornerRadius: 15.0))

                        }
                        

                        HStack{
                            ZStack{
                                NavigationLink(
                                    destination:
                                        CombosView(),
                                    label: {
                                        Text("Combos")
                                            .foregroundColor(Color.white)
                                            .background(Color.black)
                                            .font(.custom("Arial", size: 25).bold())
                                        //.padding(.horizontal, 10)
                                            .frame(width: UIScreen.main.bounds.width / 2.5, height:UIScreen.main.bounds.height / 6)
                                    }
                                    
                                )}
                            .background(Image("Combo1").resizable().scaledToFill())
                            .clipShape(RoundedRectangle(cornerRadius: 15.0))
                            
                            
                                NavigationLink(
                                    destination:
                                        DrinksView(),
                                    label: {
                                        ZStack{
                                            Image("CocaCola").resizable().scaledToFill()
                                            VStack{
                                                Text("Drinks")
                                                    .background(.thinMaterial)
                                                    .font(.custom("Arial", size: 25).bold())
                                                    
                                                Spacer()
                                            }
                                        }
                                    }
                                    
                                )
                                .frame(width: UIScreen.main.bounds.width / 2.5, height:UIScreen.main.bounds.height / 6)
                                .clipShape(RoundedRectangle(cornerRadius: 15.0))
                                

                        }
                        
                        ZStack{
                            NavigationLink(
                                destination:
                                    DessertsView(),
                                label: {
                                    Text("Desserts")
                                        .foregroundColor(Color.white)
                                        .background(Color.black)
                                        .font(.custom("Arial", size: 25).bold())
                                    //.padding(.horizontal, 10)
                                        .frame(width: UIScreen.main.bounds.width / 2.5, height:UIScreen.main.bounds.height / 6)
                                }
                                
                            )}
                        .background(Image("Brownie").resizable().scaledToFill())
                        .clipShape(RoundedRectangle(cornerRadius: 15.0))
                        Spacer()
                        
                        Divider()
                        
                        Text("Locations")
                            .font(.custom("Arial", size: 30).bold())
                            .underline()
                        
                        
                        LocationView(location: Locations(address: "NewYork Fifth Avenue", state: "Manhattan", zipCode: 10110, image: Image("CocaCola")))
                    }
                    
                    
                    
                }
                //.background(Color(red: 238 / 255, green: 233/255, blue: 225/255))
                
            }            }
        
        
        
    }
}


#Preview {
    ContentView()
}
