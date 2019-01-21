//
//  ViewController.swift
//  example_TableView
//
//  Created by Pol monleon vives on 18/01/2019.
//  Copyright © 2019 Pol monleon vives. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return categorias.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return categorias[section].devolverNombre()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categorias[section].devolverItems().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        let item:Item = categorias[indexPath.section].devolverItems()[indexPath.row]
        myCell.imageView?.image = item.devolverImagen()
        myCell.textLabel?.text = String(item.devolverDinero())
        return myCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard!.instantiateViewController(withIdentifier: "detailItem") as! ViewControllerVistaItem
        
        vc.selectetItem = categorias[indexPath.section].devolverItems()[indexPath.row]

        self.present(vc, animated: true, completion: nil)
    }

    @IBOutlet weak var tableView: UITableView!
    var categorias:[Category] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let items = [Item(ataque: 0, defensa: 10, magia: 0, suerte: 1, imagen: UIImage(named: "armour")!, tipo:"cuerpo", dinero:20),Item(ataque: 0, defensa: 20, magia: 2, suerte: 2, imagen: UIImage(named: "armour3")!, tipo:"cuerpo", dinero:60),Item(ataque: 0, defensa: 50, magia: 5, suerte: 5, imagen: UIImage(named: "armour2")!, tipo:"cuerpo", dinero:150),Item(ataque: 10, defensa: 0, magia: 0, suerte: 0, imagen: UIImage(named: "arrow")!, tipo:"arma", dinero:20),Item(ataque: 20, defensa: 0, magia: 5, suerte: 2, imagen: UIImage(named: "arrow2")!, tipo:"arma", dinero:65),Item(ataque: 50, defensa: 0, magia: 10, suerte: 5, imagen: UIImage(named: "arrow3")!, tipo:"arma", dinero:180),Item(ataque: 0, defensa: 0, magia: 0, suerte: 20, imagen: UIImage(named: "boots")!, tipo:"pies", dinero:20),Item(ataque: 0, defensa: 0, magia: 0, suerte: 50, imagen: UIImage(named: "boots2")!, tipo:"pies", dinero:200),Item(ataque: 0, defensa: 5, magia: 20, suerte: 10, imagen: UIImage(named: "cap")!, tipo:"cuerpo", dinero:60),Item(ataque: 0, defensa: 20, magia: 35, suerte: 10, imagen: UIImage(named: "cap3")!, tipo:"cuerpo", dinero:120),Item(ataque: 0, defensa: 20, magia: 60, suerte: 30, imagen: UIImage(named: "cap2")!, tipo:"cuerpo", dinero:300),Item(ataque: 5, defensa: 20, magia: 0, suerte: 0, imagen: UIImage(named: "helmet1")!, tipo:"cabeza", dinero:20),Item(ataque: 10, defensa: 30, magia: 5, suerte: 5, imagen: UIImage(named: "helmet2")!, tipo:"cabeza", dinero:100),Item(ataque: 0, defensa: 15, magia: 30, suerte: 20, imagen: UIImage(named: "helmet3")!, tipo:"cabeza", dinero:100),Item(ataque: 20, defensa: 20, magia: 10, suerte: 20, imagen: UIImage(named: "helmet4")!, tipo:"cabeza", dinero:180),Item(ataque: 0, defensa: 20, magia: 0, suerte: 0, imagen: UIImage(named: "helmet5")!, tipo:"cabeza", dinero:20),Item(ataque: 30, defensa: 0, magia: 0, suerte: 0, imagen: UIImage(named: "sword4")!, tipo:"arma", dinero:20),Item(ataque: 50, defensa: 10, magia: 5, suerte: 2, imagen: UIImage(named: "sword1")!, tipo:"arma", dinero:50),Item(ataque: 50, defensa: 20, magia: 20, suerte: 10, imagen: UIImage(named: "sword2")!, tipo:"arma", dinero:100),Item(ataque: 60, defensa: 30, magia: 30, suerte: 30, imagen: UIImage(named: "sword3")!, tipo:"arma", dinero:200),Item(ataque: 5, defensa: 15, magia: 0, suerte: 0, imagen: UIImage(named: "shield4")!, tipo:"escudo", dinero:20),Item(ataque: 10, defensa: 25, magia: 0, suerte: 0, imagen: UIImage(named: "shield")!, tipo:"escudo", dinero:50),Item(ataque: 15, defensa: 40, magia: 2, suerte: 10, imagen: UIImage(named: "shield2")!, tipo:"escudo", dinero:90),Item(ataque: 20, defensa: 60, magia: 5, suerte: 10, imagen: UIImage(named: "shield3")!, tipo:"escudo", dinero:150),Item(ataque: 10, defensa: 10, magia: 20, suerte: 10, imagen: UIImage(named: "scepter3")!, tipo:"arma", dinero:20),Item(ataque: 15, defensa: 15, magia: 50, suerte: 25, imagen: UIImage(named: "scepter")!, tipo:"arma", dinero:70),Item(ataque: 20, defensa: 20, magia: 60, suerte: 30, imagen: UIImage(named: "scepter2")!, tipo:"arma", dinero:300),Item(ataque: 20, defensa: 20, magia: 20, suerte: 20, imagen: UIImage(named: "ring")!, tipo:"especial", dinero:20),Item(ataque: 50, defensa: 50, magia: 50, suerte: 50, imagen: UIImage(named: "ring2")!, tipo:"especial", dinero:500),Item(ataque: 100, defensa: 100, magia: 100, suerte: 100, imagen: UIImage(named: "necklace")!, tipo:"especial", dinero:1000),Item(imagen: UIImage(named: "potion2")!, tipo: "cura", dinero: 200, corazones: 1),Item(imagen: UIImage(named: "potion")!, tipo: "cura", dinero: 400, corazones: 3)]
        
        let arma:Category = Category(name: "Armas")
        let defensa:Category = Category(name: "Escudos")
        let casco:Category = Category(name: "Cascos")
        let botas:Category = Category(name: "Botas")
        let especiales:Category = Category(name: "Especiales")
        let cura:Category = Category(name: "Curas")
        let cuerpo:Category = Category(name: "Armaduras")
        
        for item in items{
            switch (item.devolverTipo()){
            case "cura":
                cura.addItem(item: item)
                break
            case "arma":
                arma.addItem(item: item)
                break
            case "cabeza":
                casco.addItem(item: item)
                break
            case "cuerpo":
                cuerpo.addItem(item: item)
                break
            case "pies":
                botas.addItem(item: item)
                break
            case "especial":
                especiales.addItem(item: item)
                break
            case "escudo":
                defensa.addItem(item: item)
                break
                
            default:
                continue
            }
        }
        
        categorias.append(arma)
        categorias.append(defensa)
        categorias.append(casco)
        categorias.append(botas)
        categorias.append(especiales)
        categorias.append(cura)
        categorias.append(cuerpo)
        
        tableView.delegate = self
        tableView.dataSource = self
    }
}

