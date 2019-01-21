//
//  ViewControllerVistaItem.swift
//  example_TableView
//
//  Created by Pol monleon vives on 21/01/2019.
//  Copyright © 2019 Pol monleon vives. All rights reserved.
//

import UIKit

class ViewControllerVistaItem: UIViewController {
    
    var selectetItem:Item = Item()
    
    @IBOutlet weak var imagenItem: UIImageView!
    @IBOutlet weak var defensaItem: UILabel!
    @IBOutlet weak var ataqueItem: UILabel!
    @IBOutlet weak var suerteItem: UILabel!
    @IBOutlet weak var magiaItem: UILabel!
    @IBOutlet weak var tipoItem: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imagenItem.image = selectetItem.devolverImagen()
        defensaItem.text = String("Defensa -> \(selectetItem.devolverDefensa())")
        ataqueItem.text = String("Ataque -> \(selectetItem.devolverAtaque())")
        suerteItem.text = String("Suerte -> \(selectetItem.devolverSuerte())")
        magiaItem.text = String("Magia -> \(selectetItem.devolverMagia())")
        tipoItem.text = String("Tipo -> \(selectetItem.devolverTipo())")
    }

}
