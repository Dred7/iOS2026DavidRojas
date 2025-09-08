//
//  DataStore.swift
//  080925
//
//  Created by Facultad Contaduría y Administración on 08/09/25.
//

import Foundation
class DataStore: DataStoreProtocol {
    func save(user: User) -> Bool {
        //userdefaults
        
        return false
    }
    
    func obtain() -> User {
        return .mock
    }
    
    
}
