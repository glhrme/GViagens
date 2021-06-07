//
//  PacotesViagensViewController.swift
//  GViagens
//
//  Created by Guilherme de Assis dos Santos on 07/06/21.
//

import UIKit

class PacotesViagensViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var listaPacotes: [Viagem] = ViagemDAO().retornaTodasAsViagens()

    @IBOutlet weak var colecaoPacotesViagem: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        colecaoPacotesViagem.dataSource = self
        colecaoPacotesViagem.delegate = self
        // Do any additional setup after loading the view.
    }
    

    
     
    // MARK: - CollectionViewDatasource

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return listaPacotes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "celulaPacote", for: indexPath) as! PacoteViagemCollectionViewCell
        let viagem = listaPacotes[indexPath.row]
        cell.imagemViagem.image = UIImage(named: viagem.caminhoDaImagem)
        cell.labelDias.text = "Dias \(viagem.quantidadeDeDias)"
        cell.labelPreco.text = viagem.preco
        cell.labelTitulo.text = viagem.titulo
        cell.layer.borderWidth = 0.5
        cell.layer.borderColor = UIColor(red: 85.0/255, green: 85.0/255, blue: 85.0/255, alpha: 1).cgColor
        cell.layer.cornerRadius = 8
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.bounds.width / 2
        return CGSize(width: width - 10, height: 160)
    }

}
