//
//  _80925UITestsLaunchTests.swift
//  080925UITests
//
//  Created by Facultad Contaduría y Administración on 08/09/25.
//

import XCTest

final class _80925UITestsLaunchTests: XCTestCase {
    
    func testDataStore(){
        let userTest = User(
            username: "ivan",
            password: "123",
            lastLogged: Date(),
            expirationDate: Date()
        )
        let dataStore = DataStore()
        let resultado = dataStore.saveUser(userTest)
        XCTAssertTrue(resultado)
        
        let obtainedUser = dataStore.obtain()
        XCTAssertNotNil(obtainedUser)
        XCTAssertEqual(obtainedUser?.username, "ivan")
        XCTAssertEqual(obtainedUser?.password, "123")
        
    }

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    @MainActor
    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
