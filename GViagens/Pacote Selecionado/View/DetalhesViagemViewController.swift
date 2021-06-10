//
//  DetalhesViagemViewController.swift
//  GViagens
//
//  Created by Guilherme de Assis dos Santos on 08/06/21.
//

import UIKit

class DetalhesViagemViewController: UIViewController {
    
    @IBOutlet weak var imagemPacoteViagem: UIImageView!
    @IBOutlet weak var labelTituloViagem: UILabel!
    @IBOutlet weak var labelDetalhesPacoteViagem: UILabel!
    @IBOutlet weak var labelDiasPacoteViagem: UILabel!
    @IBOutlet weak var labelDataViagem: UILabel!
    @IBOutlet weak var labelPrecoPacoteViagem: UILabel!
    
    var pacoteSelecionado: PacoteViagem? = nil
    var positionY: CGFloat? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.positionY = self.view.frame.origin.y
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardShow(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboarHide(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        if let pacote = pacoteSelecionado {
            self.imagemPacoteViagem.image = UIImage(named: pacote.viagem.caminhoDaImagem)
            self.labelTituloViagem.text = pacote.viagem.titulo
            self.labelDetalhesPacoteViagem.text = pacote.descricao
            self.labelDataViagem.text = pacote.dataDaViagem
            self.labelPrecoPacoteViagem.text = pacote.viagem.preco
            self.labelDiasPacoteViagem.text = "\(pacote.viagem.quantidadeDeDias) dias"
        }

        // Do any additional setup after loading the view.
    }
    
    @objc func keyboardShow(notification: Notification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
                if self.view.frame.origin.y == 0 {
                    self.view.frame.origin.y -= keyboardSize.height
                }
            }
    }
    
    @objc func keyboarHide(notification: NSNotification) {
        if self.view.frame.origin.y != self.positionY {
            self.view.frame.origin.y = self.positionY!
        }
    }

    // MARK: - IBActions
    
    @IBAction func textFieldEmFoco(_ sender: UITextField) {
        let datePickerView = UIDatePicker()
        datePickerView.datePickerMode = .date
        //sender.inputView = datePickerView
    }
    
    @IBAction func botaoFinalizarCompra(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(identifier: "confirmacaoDeCompra") as! ConfirmacaoCompraViewController
        controller.pacoteComprado = pacoteSelecionado
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
}
