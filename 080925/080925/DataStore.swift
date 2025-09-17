//
//  DataStore.swift
//  080925
//
//  Created by Facultad Contaduría y Administración on 08/09/25.
//

import Foundation
class DataStore: DataStoreProtocol {
    
    let userDefualts = UserDefaults()
    
    func save(user: User) -> Bool {
        userDefualts.set(user.asJson, forKey: DataStore.key)
        return true
    }
    
    func obtain(username: String) -> User? {
        let userString = userDefualts.string(forKey: DataStore.key)
        let decoder = JSONDecoder()
        if let data = userString?.data(using: .utf8) {
            return try? decoder.decode(User.self, from: data)
        }else{
            return nil
        }
        
    }
    
    
}
