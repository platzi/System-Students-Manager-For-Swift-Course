//
//  AdvancedStudent.swift
//  
//
//  Created by Santiago Moreno on 23/10/24.
//

import Foundation

public class AdvancedStudent: Student {
    let extraPoints: Double
    
    public init(name: String, age: Int, email: String, subjects: [Subject], scores: [Double], extraPoints: Double) {
        self.extraPoints = extraPoints
        super.init(name: name, age: age, email: email, subjects: subjects, scores: scores)
    }
    
    public override func describe() -> String {
        var desc = """
        ---------------------
        ESTUDIANTE AVANZADO:
        ---------------------
        # Nombre: \(name)
        # Correo electrónico: \(email)
        # Edad: \(age)
        # Puntos extra: \(extraPoints)
        # Materias que esta cursando:
        """
        
        for subject in subjects {
            desc += "\n\(subject.describe())"
        }
        
        desc += """
        \n---------------------
        """
        return desc
    }
}
