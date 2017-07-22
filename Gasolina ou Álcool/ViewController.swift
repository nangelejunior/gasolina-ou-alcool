//
//  ViewController.swift
//  Gasolina ou Álcool
//
//  Created by Neuclair J. Angele Junior on 22/07/17.
//  Copyright © 2017 Neuclair J. Angele Junior. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var precoAlcoolTextField: UITextField!
    @IBOutlet weak var precoGasolinaTextField: UITextField!
    @IBOutlet weak var ResultadoLabel: UILabel!
    
    @IBAction func calcularCombustivel(_ sender: Any) {
        self.ResultadoLabel.text = ""
        
        var precoAlcool: Double = 0
        var precoGasolina: Double = 0
        var resultadoPreco: Double = 0
        
        if let precoAlcoolTextField = self.precoAlcoolTextField.text, let resultadoPrecoAlcool = Double(precoAlcoolTextField) {
            precoAlcool = resultadoPrecoAlcool
        }
        
        if let precoGasolinaTextField = self.precoGasolinaTextField.text, let resultadoPrecoGasolina = Double(precoGasolinaTextField) {
            precoGasolina = resultadoPrecoGasolina
        }
        
        resultadoPreco = precoAlcool / precoGasolina
        
        if (resultadoPreco >= 0.7) {
            self.ResultadoLabel.text = "Melhor utilizar Gasolina!"
        } else {
            self.ResultadoLabel.text = "Melhor utilizar Álcool!"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

