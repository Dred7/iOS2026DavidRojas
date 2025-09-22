//
//  ViewModel.swift
//  gettingstart6
//
//  Created by Facultad Contaduría y Administración on 22/09/25.
//

import Foundation
class ViewModel{
    public var anios: [String]{
        ["2024","2025"]
    }
    
    public var meses: [String]{
        ["Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre"]
    }
    func numberOfSections() -> Int {
        return 2
    }
    func numberOfRowsInSection(_ section: Int) -> Int {
        return 12
    }
}
