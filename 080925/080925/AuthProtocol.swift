//
//  AuthProtocol.swift
//  080925
//
//  Created by Facultad Contaduría y Administración on 08/09/25.
//

import Foundation
protocol AuthProtocol {
    func login(username: String, password: String) -> Bool
    
    var isLogin: Bool { get }
}
