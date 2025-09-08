//
//  ViewControllerD.swift
//  GettingStarded2
//
//

import Foundation
import UIKit

class ViewControllerD: BaseViewController{
    
    @IBOutlet var labelMessage: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        labelMessage.text = message
    }
    @IBAction func didTapBoton(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
}
