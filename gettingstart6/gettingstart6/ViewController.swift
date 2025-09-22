//
//  ViewController.swift
//  gettingstart6
//
//  Created by Facultad Contaduría y Administración on 22/09/25.
//

import UIKit

class ViewController: UITableViewController {

    let viewModel = ViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "miCelda", for: indexPath) as? MiCelda {
            cell.blue.text = viewModel.meses[indexPath.row]
            return cell
        }
        return UITableViewCell()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return viewModel.numberOfSections()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSection(section)
    }
    override func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        viewModel.anios[section]
    }
}

