//
//  LoginTests.swift
//  LoginTests
//
//  Created by Facultad de Contaduría y Administración on 08/09/25.
//

import XCTest
@testable import Login

final class LoginTests: XCTestCase {

    
    func testDataStore() {
        let userTest = User(
            username: "Ivan",
            password: "123",
            lastLogged: Date(),
            expirationDate: Date()
        )
        let dataStore = DataStore()
        let resultado = dataStore.save(user: userTest)
        XCTAssertTrue(resultado)
        
        let obtainUser = dataStore.obtain(username: userTest.username)
        XCTAssertNotNil(obtainUser)
        XCTAssertEqual(obtainUser?.username, "Ivan")
        XCTAssertEqual(obtainUser?.password, "123")
    }
    
    func testDataStoreUserNil() {
        
        let dataStore = DataStore()
        let obtainUser = dataStore.obtain(username: "1231231323")
        XCTAssertNil(obtainUser)
    }

}
