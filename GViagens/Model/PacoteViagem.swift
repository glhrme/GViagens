//
//  PacoteViagem.swift
//  GViagens
//
//  Created by Guilherme de Assis dos Santos on 08/06/21.
//

import UIKit

class PacoteViagem: NSObject {
    let nomeDoHotel: String
    let descricao: String
    let dataDaViagem: String
    let viagem: Viagem
    
    init(nomeDoHotel nomeDoHotel: String, descricao descricao: String, dataViagem dataDaViagem: String, viagem viagem: Viagem) {
        self.nomeDoHotel = nomeDoHotel
        self.descricao = descricao
        self.dataDaViagem = dataDaViagem
        self.viagem = viagem
    }
}
