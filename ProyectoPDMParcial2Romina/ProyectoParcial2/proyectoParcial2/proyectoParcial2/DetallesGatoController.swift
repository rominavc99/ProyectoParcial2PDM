//
//  DetallesGatoController.swift
//  proyectoParcial2
//
//  Created by Blanca Castellanos  on 14/10/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import Foundation
import UIKit

class DetallesGatoController : UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    var gato : Gato = Gato(raza: "", pelaje: "", edadEstimada: "", origen: "", caracter: "", foto: "")
    
    @IBOutlet weak var lblRaza: UILabel!
    @IBOutlet weak var lblOrigen: UILabel!
    @IBOutlet weak var lblEdad: UILabel!
    @IBOutlet weak var lblCaracter: UILabel!
    @IBOutlet weak var lblPelaje: UILabel!
    
    
    
    
    override func viewDidLoad() {
        
        self.title = gato.raza
        
        lblRaza.text = gato.raza
        lblOrigen.text = gato.origen
        lblEdad.text = gato.edadEstimada
        lblCaracter.text = gato.caracter
        lblPelaje.text = gato.pelaje
        
    }
}
