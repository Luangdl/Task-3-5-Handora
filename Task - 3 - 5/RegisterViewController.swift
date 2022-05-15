//
//  ViewController.swift
//  Task - 3 - 5
//
//  Created by Luan.Lima on 14/05/22.
//

import UIKit

class RegisterViewController: UIViewController {

    
    @IBOutlet weak var campoNome: UITextField!
    @IBOutlet weak var campoEmail: UITextField!
    @IBOutlet weak var areaDeAtuacao: UITextField!
    @IBOutlet weak var statusProfissional: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func botaoReceberMaterial(_ sender: Any) {
        presionandoReceberMaterial()
    }
    
    func presionandoReceberMaterial() {
        
        let alert = UIAlertController(title: "Quase lá!", message: """
    
        Antes de enviarmos, por favor, revise seus dados:

        Nome: \(String(describing: campoNome.text!))
        Email: \(String(describing: campoEmail.text!))
        Área de Atuação: \(String(describing: areaDeAtuacao.text!))
        Status Profissional: \(String(describing: statusProfissional.text!))
""", preferredStyle: .actionSheet)
        
        alert.addAction(UIAlertAction(title: "Confirmar", style: .default, handler: { action in
            pressed()
    }))
    
        func pressed()
        {
            let confirmar = UIAlertController(title: "Feito!", message: "Verifique seu email e tenha acesso ao documento.", preferredStyle: .alert)
            
            confirmar.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
            
            present(confirmar, animated: true, completion: nil)
        }

        alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: nil))

        present(alert, animated: true, completion: nil)
    }
}

