//
//  user.swift
//  080925
//
//  Created by Facultad Contaduría y Administración on 08/09/25.
//

import Foundation
struct User{
    let userName:String
    let password:String
    let lastLogged: Date
    let expirationDate: Date
}

extension User{
    static let mock:User = .init(
        userName: "admin",
        password: "123456",
        lastLogged: Date(),
        expirationDate: Date().addingTimeInterval(3600)
    )
}
