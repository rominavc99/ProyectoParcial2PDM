//
//  ViewController.swift
//  proyectoParcial2
//
//  Created by Alumno on 13/10/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    @IBOutlet weak var tvGatos: UITableView!
    var gatos : [Gato] = []
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gatos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaGato") as! CeldaGatoController
        
        celda.lblRaza.text = gatos[indexPath.row].raza
        celda.lblFotoGato.image = UIImage(named: gatos[indexPath.row].foto)
        
        return celda
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! DetallesGatoController
        destino.gato = gatos [tvGatos.indexPathForSelectedRow!.row]
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Gatos"
        gatos.append(Gato(raza: "Abisino", pelaje: "corto y suave", edadEstimada: "10 años", origen: "Asia", caracter: "Activo", foto: "abisino"))
        gatos.append(Gato(raza: "Bengala", pelaje: "corto y suave manchado", edadEstimada: "10 años", origen: "Estados Unidos", caracter: "Activo", foto: "bengala"))
        gatos.append(Gato(raza: "Azul Ruso", pelaje: "corto y suave azul grisaceo", edadEstimada: "10 años", origen: "Europa", caracter: "Hogareño", foto: "azulRuso"))
        gatos.append(Gato(raza: "Bombay", pelaje: "corto y suave negro", edadEstimada: "10 años", origen: "Estados Unidos", caracter: "Juguetón", foto: "bombay"))
        gatos.append(Gato(raza: "Burmilla", pelaje: "corto y suave blanco/gris", edadEstimada: "10 años", origen: "Gran Bretaña", caracter: "Activo", foto: "burmilla"))
    }


}

