//
//  DataStoreProtocol.swift
//  080925
//
//  Created by Facultad Contaduría y Administración on 08/09/25.
//

import Foundation
protocol DataStoreProtocol {
    
    func save(user:User) -> Bool
    func obtain(username: String) -> User?
}
