//
//  ViewController.swift
//  CicloDeVida
//
//  Created by Usuário Convidado on 23/03/2018.
//  Copyright © 2018 Fiap. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var lbFullName: UILabel!
    
    @IBOutlet weak var lfText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("Tela 1: ViewDidLoad")
        view.backgroundColor = .red
        lbFullName.text = ""
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Tela 1: viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
         print("Tela 1: viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
         print("Tela 1: viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("Tela 1: viewWillDisappear")
    }
    
    
    
    
    @IBAction func changeLabel(_ sender: UIButton) {
    
        lbFullName.text = lfText.text?.uppercased()
    }
    
    

    
    
    
    
}

