//
//  BaseViewController.swift
//  GettingStarded2
//
//  Created by Facultad Contaduría y Administración on 08/09/25.
//

import Foundation
import UIKit

class BaseViewController: UIViewController {
    
    var message: String?{
        didSet{
            if message == nil || message?.isEmpty ?? false {
                message = "no hay mensaje"
            }
        }
    }
    
    func next (vcName: String, message: String? = ""){
        let storyboard = UIStoryboard(name: "Main", bundle:.main)
        if let vc = storyboard.instantiateViewController(withIdentifier: vcName) as? ViewControllerB{vc.message = textField.text
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}

