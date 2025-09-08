//
//  ViewControllerC.swift
//  GettingStarded2
//
//


import Foundation
import UIKit

class ViewControllerC: BaseViewController {
    
    @IBOutlet var labelMessage: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelMessage.text = message
    }
    @IBAction func didTapVC(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle:.main)
        let vc = storyboard.instantiateViewController(withIdentifier: "VC4")
        
        navigationController?.pushViewController(vc, animated: true)
    }
}
