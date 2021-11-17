//
//  ViewController.swift
//  MOVISNEY
//
//  Created by Alumno on 11/16/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var peliculas : [Pelicula] = []
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return peliculas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaPelicula") as! CeldaPeliculaController
        celda.lblNombre.text = peliculas[indexPath.row].nombre
        celda.lblAno.text = peliculas[indexPath.row].año
        celda.lblDuracion.text = peliculas[indexPath.row].duracion
        return celda
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

