//
//  ViewController.swift
//  GettingStarded2
//
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       
    }

    @IBAction func didTapNextVc(_ sender: Any) {
        
        //Aqui Hay q Hacer la instancia
        let storyboard = UIStoryboard(name: "Main", bundle:.main)
        let vc = storyboard.instantiateViewController(withIdentifier: "VC2")
        
        navigationController?.pushViewController(vc, animated: true)
        
        
    }
    
}

