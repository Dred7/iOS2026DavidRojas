//
//  ViewControllerB.swift
//  GettingStarded2
//
//

import Foundation
import UIKit

class ViewControllerB: UIViewController {
    
    @IBAction func didTapVC(_ sender: Any) {
        //Aqui Hay q Hacer la instancia
        let storyboard = UIStoryboard(name: "Main", bundle:.main)
        let vc = storyboard.instantiateViewController(withIdentifier: "VC3")
        
        navigationController?.pushViewController(vc, animated: true)
        
        
    }
}
