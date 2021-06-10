//
//  ConfirmacaoCompraViewController.swift
//  GViagens
//
//  Created by Guilherme de Assis dos Santos on 09/06/21.
//

import UIKit

class ConfirmacaoCompraViewController: UIViewController {

    @IBOutlet weak var imagemViagem: UIImageView!
    @IBOutlet weak var botaoVoltarHome: UIButton!
    
    var pacoteComprado : PacoteViagem? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagemViagem.layer.cornerRadius = 10
        imagemViagem.layer.masksToBounds = true
        // Do any additional setup after loading the view.
    }
    
    // MARK: - IBActions
    
    @IBAction func cliqueBotaoVoltar(_ sender: UIButton) {
        if let navigation = self.navigationController {
            navigation.popToRootViewController(animated: true)
        }
    }
    
    /*
    

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
