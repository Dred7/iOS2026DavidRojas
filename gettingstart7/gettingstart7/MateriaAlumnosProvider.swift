//
//  MateriaAlumnosProvider.swift
//  gettingstart7
//
//  Created by Facultad Contaduría y Administración on 24/09/25.
//

import Foundation
class MateriaAlumnosProvider {
    static func provide() -> MateriaAlumno {
        let dict: [Materia: [Alumno]]=[
            Materia(nombre: "YA"):[
                Alumno(nombre: "YA1", noCuenta: "\(Int.random(in: 1...8))"),
                Alumno(nombre: "YA2", noCuenta: "\(Int.random(in: 1...8))"),
                Alumno(nombre: "YA3", noCuenta: "\(Int.random(in: 1...8))")
            ],
            
            Materia(nombre: "YA2"):[
                Alumno(nombre: "YA1", noCuenta: "\(Int.random(in: 1...8))"),
                Alumno(nombre: "YA2", noCuenta: "\(Int.random(in: 1...8))"),
                Alumno(nombre: "YA3", noCuenta: "\(Int.random(in: 1...8))")
            ]
        ]
        
        return MateriaAlumno(dict: dict)
    }
}
