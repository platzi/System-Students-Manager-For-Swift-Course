//
//  Subject.swift
//  
//
//  Created by Santiago Moreno on 23/10/24.
//

import Foundation

public struct Subject: Describable, Hashable {
    let name: String
    let teacherName: String
    let level: SubjectLevel
    
    public init(name: String, teacherName: String, level: SubjectLevel) {
        self.name = name
        self.teacherName = teacherName
        self.level = level
    }
    
    public func isPassed(score: Double) -> Bool {
        return score >= minimumScore()
    }
    
    public func describe() -> String {
        return """
        -----------------------------
        Materia: \(name)
        Profesor: \(teacherName)
        Puntaje minimo para pasar: \(minimumScore())
        """
    }
    
    private func minimumScore() -> Double {
        switch level {
        case .basic:
            return 50.0
        case .intermediate:
            return 70.0
        case .advanced:
            return 80.0
        }
    }
}
