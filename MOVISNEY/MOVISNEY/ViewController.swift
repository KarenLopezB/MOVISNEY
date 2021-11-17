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
        celda.lblCalificacion.text = peliculas[indexPath.row].calificacion
        return celda
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        peliculas.append(Pelicula(nombre: "La Cenicienta", año: "1950", duracion: "1h 16 min", calificacion: "4.2 / 5"))
        peliculas.append(Pelicula(nombre: "Blancanieves y los siete enanos", año: "1937", duracion: "1h 23 min", calificacion: "4.1 / 5"))
        peliculas.append(Pelicula(nombre: "La Sirenita", año: "1989", duracion: "1h 23 min", calificacion: "4.2 /  5"))
        peliculas.append(Pelicula(nombre: "La Bella Durmiente", año: "1959", duracion: "1h 15 min", calificacion: "3.8 / 5"))
        peliculas.append(Pelicula(nombre: "La Bella y la Bestia", año: "1991", duracion: "1h 24 min", calificacion: "4.4 / 5"))
    }
}

