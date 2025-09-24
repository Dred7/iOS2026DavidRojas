//
//  ViewModelTablaMaterias.swift
//  gettingstart7
//
//  Created by Facultad Contaduría y Administración on 24/09/25.
//

import Foundation
class ViewModelTablaMaterias {
    
    let materias: [Materia]
    
    init(materias: [Materia]) {
        self.materias = materias
    }
    
    func numberOfSections() -> Int {
        1
    }
    
    func numberOfRows() -> Int {
        materias.count
    }
    func didTap(indexOfRow: Int) -> [Alumno] {
        return []
    }
}
