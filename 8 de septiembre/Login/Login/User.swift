//
//  User.swift
//  Login
//
//  Created by Facultad de Contaduría y Administración on 08/09/25.
//

import Foundation


struct User: Codable {
    let username: String
    let password: String
    let lastLogged: Date
    let expirationDate: Date // calculado
    
    public var asJson: String? {
        let encoder = JSONEncoder()
        guard let data = try? encoder.encode(self) else { return nil }
        return String(data: data, encoding: .utf8)
    }
}


