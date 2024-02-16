//
//  ItemsView.swift
//  Actividad 2
//
//  Created by iOS Lab on 16/02/24.
//

import SwiftUI
import Foundation

struct ItemsView: View {
    
   @Binding var filteredList: Items
   @Binding var practica: Bool
    
    var body: some View {
            //Ciclo que itera a través del arreglo, por cada objeto en él, se agregará la ventanilla
            
            HStack{
                filteredList.imageName
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width / 3.5, height: UIScreen.main.bounds.height / 7.5)
                    .cornerRadius(15.0)
                    .padding(.all, 10)
                
                VStack(alignment: .leading){
                    Text(filteredList.name)
                        .multilineTextAlignment(.leading)
                        .font(.custom("Arial", size: 18).bold())
                        //.frame(maxWidth:250)
                        .padding(.bottom, 10)
                        
                    Text(filteredList.description)
                        .multilineTextAlignment(.leading)
                        .font(.custom("Arial", size: 15))
                        .italic()
                        .padding(.bottom, 8)
                        .padding(.trailing, 10)
                    
                    HStack{
                        Text(filteredList.price)
                            .multilineTextAlignment(.leading)
                            .font(.custom("Arial", size: 15))
                        Spacer()
                        
                        Button{
                            practica.toggle()
                        }
                    label: {
                        if practica{
                            Image(systemName: "star.fill").foregroundColor(.yellow)
                        }else{
                            Image(systemName: "star").foregroundColor(.black)
                        }
                    }
                        
                        
                    }.padding(.trailing, 10)

                    
                }.frame(maxWidth: 250)
            }
            .frame(width: UIScreen.main.bounds.width * 0.9)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 15.0))


    }
}

#Preview {
    ContentView()
}
