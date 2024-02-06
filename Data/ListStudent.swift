//
//  ListStudent.swift
//  Actividad 2
//
//  Created by iOS Lab on 06/02/24.
//

import SwiftUI

struct ListStudent: View {
    
    var student: Student
    
    var body: some View {
        HStack{
            student.profilePic.resizable().frame(width: 100, height: 100)
            VStack(alignment: .leading){
                Text(student.name)
                Text(student.lastName)
                Text(student.career)
            }
        }
    }
}

#Preview {
    ListStudent(student: Student(name: "Andres", lastName: "Cabral", id: 172062, career: "Ing. Sistemas", profilePic: Image("CocaCola")))
}
