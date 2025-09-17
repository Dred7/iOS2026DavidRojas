//
//  ViewController.swift
//  Login
//
//  Created by Facultad de Contaduría y Administración on 08/09/25.
//

import UIKit

class ViewController: UIViewController {

    let auth: AuthProtocol? = nil
    let dataStore: DataStoreProtocol = DataStore()
    
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBAction func login(_ sender: Any) {
        let user = dataStore.obtain(username: username.text ?? "")
        
        //let respuesta = auth?.login(username: username.text, password: password.text)
        // Aquí la lógica de verificar usuario y pwd
        if user?.username == username.text && user?.password == password.text {
            // Lo mandamos a dashboard
            let storyboard = UIStoryboard(name: "Main", bundle: .main)
            let vc = storyboard.instantiateViewController(withIdentifier: "vc3")
            navigationController?.pushViewController(vc, animated: true)
            /*if let vc = storyboard.instantiateViewController(withIdentifier: vcs) as? BaseViewController { // Esto es un casting. Esta linea nos da un opcional
                vc.message = message
                navigationController?.pushViewController(vc, animated: true)
            }*/
        }
    }
}

