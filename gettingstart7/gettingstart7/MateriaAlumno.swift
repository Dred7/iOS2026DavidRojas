//
//  MateriaAlumno.swift
//  gettingstart7
//
//  Created by Facultad Contaduría y Administración on 24/09/25.
//

import Foundation
struct MateriaAlumno{
    private let dict: [Materia: [Alumno]]
    
    init(dict: [Materia : [Alumno]]) {
        self.dict = dict
    }
    
    func getAlumnos(materia: Materia) -> [Alumno] {
        dict[materia] ?? []
    }
    
    func getMaterias() -> [Materia] {
        Array(dict.keys)
    }
}
