//
//  ViewController.swift
//  frases-do-dia
//
//  Created by Nubio Knupp on 12/09/16.
//  Copyright © 2016 Nubio Knupp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var fraseLabel: UILabel!;
    
    let tamanho : Int = 6;
    var frases : [String] = [];
    var indexAtual : Int = 0;

    override func viewDidLoad() {
        super.viewDidLoad()
        
        frases.append(" Eu acredito demais na sorte. E tenho constatado que, quanto mais duro eu trabalho, mais sorte eu tenho.");
        frases.append(" Você erra todos arremesso que não tenta.");
        frases.append(" Quando abro a porta de uma nova descoberta, já encontro Deus lá dentro.");
        frases.append(" Enquanto a cor da pele for mais importante que o brilho dos olhos, haverá guerra.");
        frases.append(" Os políticos são os mesmos por toda parte. Prometem construir uma ponte, mesmo onde não há rio.");
        frases.append(" Seus clientes menos satisfeitos são sua maior fonte de aprendizado.");
        frases.append(" O ódio revela muita coisa que permanece oculta ao amor. Lembra-te disso e não desprezes a censura dos inimigos.");
        
        indexAtual = Int(arc4random_uniform(UInt32(tamanho)));
        proxima();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func proximaFrase(_ sender: AnyObject) {
        var numero = Int(arc4random_uniform(UInt32(tamanho)));
        
        while (indexAtual == numero) {
            numero = Int(arc4random_uniform(UInt32(tamanho)));
        }
        
        indexAtual = numero;
        
        proxima();
    }
    
    func proxima(){
        
        fraseLabel.text = frases[indexAtual];
    }

}

