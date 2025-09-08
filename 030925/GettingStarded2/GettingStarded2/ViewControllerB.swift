//
//  ViewControllerB.swift
//  GettingStarded2
//
//

import Foundation
import UIKit

class ViewControllerB: BaseViewController {

    @IBOutlet var labelMessage: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        labelMessage.text = message
    }
    
    @IBAction func didTapVC(_ sender: Any) {
        //Aqui Hay q Hacer la instancia
        let storyboard = UIStoryboard(name: "Main", bundle:.main)
        let vc = storyboard.instantiateViewController(withIdentifier: "VC3")
        
        navigationController?.pushViewController(vc, animated: true)
        
        
    }
}
