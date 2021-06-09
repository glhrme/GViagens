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
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
