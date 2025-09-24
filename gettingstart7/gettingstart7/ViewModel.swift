//
//  ViewModel.swift
//  gettingstart7
//
//  Created by Facultad Contaduría y Administración on 24/09/25.
//

import Foundation
class ViewModelTablaAlumno {
    
    let alumnos: [Alumno]
    
    init(alumnos: [Alumno]) {
        self.alumnos = alumnos
    }
    
    func numberOfSections() -> Int {
        1
    }
    
    func numberOfRows() -> Int {
        alumnos.count
    }
}
