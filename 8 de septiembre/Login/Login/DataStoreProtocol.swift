//
//  DataStoreProtocol.swift
//  Login
//
//  Created by Facultad de Contaduría y Administración on 08/09/25.
//

import Foundation

// Interface
protocol DataStoreProtocol {
    func save(user: User) -> Bool
    func obtain(username: String) -> User?
}
