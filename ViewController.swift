//
//  ViewController.swift
//  IMCApp
//
//  Created by Matheus Lima Gomes on 02/03/19.
//  Copyright © 2019 Matheus Lima Gomes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtPeso: UITextField!
    @IBOutlet weak var txtAltura: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    @IBOutlet weak var imgResult: UIImageView!
    @IBOutlet weak var vwResult: UIView!
    var imc : Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func actCalcula(_ sender: Any) {
        if let peso = Double(txtPeso.text!),let altura = Double(txtAltura.text!){
            
            imc = peso / (altura * altura)
            showResults()
        }
    }
    func showResults(){
        var result : String = ""
        var image : String = ""
        
        switch imc {
        case 0..<16:
            result = "Magreza"
            image = "abaixo"
        case 16..<18.5:
            result = "Abaixo do Peso"
            image = "abaixo"
        case 18.5..<25:
            result = "Peso Ideal"
            image = "ideal"
        case 25..<30:
            result = "Sobrepeso"
            image = "sobre"
        default:
            result = "Obesidade"
            image = "obesidade"
        }
        lblResult.text = result
        imgResult.image = UIImage(named: image)
        vwResult.isHidden = false
    }
}

