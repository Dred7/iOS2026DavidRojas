//
//  DataStore.swift
//  Login
//
//  Created by Facultad de Contaduría y Administración on 08/09/25.
//

import Foundation

// Implementación
class DataStore: DataStoreProtocol {

    let usersDefaults = UserDefaults()
    
    func save(user: User) -> Bool {
        usersDefaults.set(user.asJson, forKey: user.username)
        return true
    }
    
    func obtain(username: String) -> User? {
        let userString = usersDefaults.string(forKey: username)
        let decoder = JSONDecoder()
        if let data = userString?.data(using: .utf8) {
            return try? decoder.decode(User.self, from: data)
        } else {
            return nil
        }
    }
}
    
