//
//  ContentView.swift
//  Actividad2
//
//  Created by Andres Cabral on 30/01/24.
//

import SwiftUI

//Crear una aplicación en XCode utilizando SwiftUI que contenga 6 pantallas simulando una aplicación de un restaurante, Una pantalla sería la pantalla principal de la app donde se muestre el nombre del restaurante, horario, información, dirección etc, se deja a criterio del estudiante que elementos agregar siempre buscando hacer lo mejor posible, esta pantalla tiene que tener 5 botones (que no realizarán ninguna acción de momento), que llevarían a las 5 categorias del menú, las otras 5 pantallas de cada categoría deberán mostrar los diferentes platillos, precio, una descripción de cada elemento y todo lo que el alumno quiera agregar.

struct ContentView: View {
    
    var body: some View {
        
           
            
            NavigationView{ //Para que pueda dirigir a otras ventas
                
                VStack{
                    VStack{ //Crea el primer VStack para acomodar el nombre del resutaurante arriba
                        Text("Hamburgers Puebla")
                            .frame(width: UIScreen.main.bounds.width, height: 60)
                            .font(Font.custom("Arial", size: 30).bold())
                            .underline()
                    
                        Text("New York - Manhattan")
                            .padding(.bottom, 5)
                            .font(.system(size:20))
                            .italic()


                    }
                    //.background(Color.black)
                    //.frame(maxHeight: .infinity, alignment: .top) // To move the whole thing to the top of the page
                    Divider()
                    
                    Text("Visit the best Burgers in Manhattan. Straight from Puebla, Mexico, to your home.")
                        .padding(.horizontal, 20)
                        .padding(.vertical, 20)
                        .font(.system(size:20))
                        .multilineTextAlignment(.center)

                    Divider()

                    
                    Text("Menu")
                    .font(.custom("Arial", size: 30).bold())

                    ZStack{
                        NavigationLink(
                            destination:
                                HamburgerView(), //Dirige a la ventana de las hamburgesas
                            label: {
                                Text("Hamburgers")
                                    .foregroundColor(Color.black)
                                    .font(.custom("Arial", size: 30).bold())
                                //.padding(.horizontal, 10)
                                    .frame(width: 350, height:UIScreen.main.bounds.height / 12)
                            }
                            
                        )}
                    .background(Color.orange)                   .clipShape(RoundedRectangle(cornerRadius: 25.0))
                    
                   
                    
                    ZStack{
                        NavigationLink(
                            destination:
                                HotdogsView(), //Dirigir al usuario al menu de los hotdogs
                            label: {
                                Text("Hot Dogs")
                                    .foregroundColor(Color.black)
                                    .font(.custom("Arial", size: 30).bold())
                                //.padding(.horizontal, 10)
                                    .frame(width: 350, height:UIScreen.main.bounds.height / 12)
                            }
                            
                        )}
                    .background(Color(red: 246 / 255, green: 239 / 255, blue: 42 / 255)
)                    .clipShape(RoundedRectangle(cornerRadius: 25.0))
                    
                    ZStack{
                        NavigationLink(
                            destination:
                                CombosView(),
                            label: {
                                Text("Combos")
                                    .foregroundColor(Color.black)
                                    .font(.custom("Arial", size: 30).bold())
                                //.padding(.horizontal, 10)
                                    .frame(width: 350, height:UIScreen.main.bounds.height / 12)
                            }
                            
                        )}
                    .background(Color(red: 0 / 255, green: 102 / 255, blue: 0 / 255)
)
                    .clipShape(RoundedRectangle(cornerRadius: 25.0))
                    
                    ZStack{
                        NavigationLink(
                            destination:
                                ContentView(),
                            label: {
                                Text("Drinks")
                                    .foregroundColor(Color.black)
                                    .font(.custom("Arial", size: 30).bold())
                                //.padding(.horizontal, 10)
                                    .frame(width: 350, height:UIScreen.main.bounds.height / 12)
                            }
                            
                        )}
                    .background(Color(red: 102 / 255, green: 56 / 255, blue: 0 / 255)
)
                    .clipShape(RoundedRectangle(cornerRadius: 25.0))
                    
                    ZStack{
                        NavigationLink(
                            destination:
                                ContentView(),
                            label: {
                                Text("Desserts")
                                    .foregroundColor(Color.black)
                                    .font(.custom("Arial", size: 30).bold())
                                //.padding(.horizontal, 10)
                                    .frame(width: 350, height:UIScreen.main.bounds.height / 12)
                            }
                            
                        )}
                    .background(Color.orange)                    .clipShape(RoundedRectangle(cornerRadius: 25.0))
                    Spacer()


                }            
                .background(Color(red: 238 / 255, green: 233/255, blue: 225/255))

            }

        }
    }


#Preview {
    ContentView()
}
