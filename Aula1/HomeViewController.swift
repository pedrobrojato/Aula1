//
//  HomeViewController.swift
//  Aula1
//
//  Created by Dafle on 01/03/22.
//

import Foundation
import UIKit

class HomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        print("viewdidloadchamado")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(#function)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(#function)
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print(#function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print(#function)
    }
    
    @IBAction func didTapButton(_ sender: Any) {
        navigationController?.pushViewController(UIViewController(), animated: true)
    }
    
    deinit {
        print("Minha \(self) foi tirada de memoria")
    }
}
