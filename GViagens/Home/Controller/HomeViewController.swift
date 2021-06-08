//
//  ViewController.swift
//  GViagens
//
//  Created by Guilherme de Assis dos Santos on 06/06/21.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tabelaViagem: UITableView!
    @IBOutlet weak var viewBtnPacotes: UIView!
    @IBOutlet weak var viewBtnHoteis: UIView!
    
    let listaViagem: [Viagem] = ViagemDAO().retornaTodasAsViagens()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabelaViagem?.dataSource = self
        self.tabelaViagem?.delegate = self
        self.viewBtnHoteis.layer.cornerRadius = 10
        self.viewBtnPacotes.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaViagem.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCellController
        let viagemAtual = listaViagem[indexPath.row]
        celula.labelTitle.text = viagemAtual.titulo
        celula.labelQuantidadeDeDias.text = "\(viagemAtual.quantidadeDeDias) dias"
        celula.labelPreco.text = viagemAtual.preco
        //celula.imageView?.image = UIImage(named: viagemAtual.caminhoDaImagem)
        celula.imageView?.layer.masksToBounds = true
        celula.imageView?.layer.cornerRadius = 10
        return celula
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 175
    }


}

