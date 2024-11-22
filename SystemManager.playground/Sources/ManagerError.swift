//
//  ManagerError.swift
//  
//
//  Created by Santiago Moreno on 24/10/24.
//

import Foundation

public enum ManagerError: Error, LocalizedError {
    case studentNotAddedError
    case subjectNotAssignedError
    case reportNotFoundError
    case maxStudentsReachedError(max: Int)
    
    public var errorDescription: String? {
        switch self {
        case .studentNotAddedError:
            return "El estudiante no se pudo agregar"
        case .subjectNotAssignedError:
            return "No se pudo asignar al materia"
        case .reportNotFoundError:
            return "El reporte no se pudo encontrar porque la lista de estudiantes está vacía"
        case .maxStudentsReachedError(let max):
            return "La cantidad máxima de estudiantes es: \(max) y ya fue alcanzada"
        }
    }
    
}
