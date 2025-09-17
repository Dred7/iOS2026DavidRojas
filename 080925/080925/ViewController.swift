//
//  ViewController.swift
//  080925
//
//  Created by Facultad Contaduría y Administración on 08/09/25.
//

import UIKit

class ViewController: UIViewController {
    
    let dataStore: DataStoreProtocol = DataStore()

    @IBOutlet var password: UITextField!
    @IBOutlet var username: UITextField!
    @IBAction func login(_ sender: Any) {
        let user = dataStore.obtain(username: username.text ?? "")
        //logica para verificar usario y contraseña
        if user?.username == username.text && user?.password == password.text {
            //mandar a dashboard
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

