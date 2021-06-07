//
//  Viagem.swift
//  GViagens
//
//  Created by Guilherme de Assis dos Santos on 06/06/21.
//

import UIKit

class Viagem: NSObject {
    let titulo: String
    let quantidadeDeDias: Int
    let preco: String
    let caminhoDaImagem: String
    
    init(titulo: String, quantidadeDeDias: Int, preco: String, caminhoDaImagem: String) {
        self.titulo = titulo
        self.quantidadeDeDias = quantidadeDeDias
        self.preco = preco
        self.caminhoDaImagem = caminhoDaImagem
    }

}
