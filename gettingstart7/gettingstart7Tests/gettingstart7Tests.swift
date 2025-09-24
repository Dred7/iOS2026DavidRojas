//
//  gettingstart7Tests.swift
//  gettingstart7Tests
//
//  Created by Facultad Contaduría y Administración on 24/09/25.
//

import XCTest
@testable import gettingstart7

final class gettingstart7Tests: XCTestCase {

    func testViewModelTablaAlumno_1(){
        let alumno = [Alumno(nombre: "PAmela CHU", noCuenta: "12121212")]
        let viewModel = ViewModelTablaAlumno(alumnos: alumno)
        XCTAssertEqual(viewModel.alumnos.count, 1)
        
    }
    
    func testViewModelTablaAlumno_2(){
        let alumno = [Alumno(nombre: "PAmela CHU", noCuenta: "12121212")]
        let viewModel = ViewModelTablaAlumno(alumnos: alumno)
        XCTAssertEqual(viewModel.numberOfRows(), 1)
    }
    
    func testViewModelTablaAlumno_3(){
        let alumno = [Alumno(nombre: "PAmela CHU", noCuenta: "12121212")]
        let viewModel = ViewModelTablaAlumno(alumnos: alumno)
        XCTAssertEqual(viewModel.numberOfSections(), 1)
    }
    
    func testViewModelTablaAlumno_4(){
        let alumno = [Alumno(nombre: "PAmela CHU", noCuenta: "12121212"),
                      Alumno(nombre: "PAmela CHU", noCuenta: "12121212"),
                      Alumno(nombre: "PAmela CHU", noCuenta: "12121212")]
        let viewModel = ViewModelTablaAlumno(alumnos: alumno)
        XCTAssertEqual(viewModel.numberOfRows(), 3)
    }

}
