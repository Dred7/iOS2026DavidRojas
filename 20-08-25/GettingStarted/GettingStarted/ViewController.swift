//
//  ViewController.swift
//  GettingStarted
//
//  Created by Facultad Contaduría y Administración on 20/08/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lbltext: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("viewDidLoad")
    }

    
    @IBAction func didTap(_ sender: Any) {
        lbltext.text! += "Hice un tap en un iPhone"
    }
}

