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
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
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
        peliculas.append(Pelicula(nombre: "La Cenicienta", año: "Año: 1950", duracion: "Duracion: 1h 16 min", calificacion: "Calificacion: 4.2 / 5", directores: "Directores: Clyde Geronimi, Hamilton Luske, Wilfred Jackson", descripcion: "Descripcion: Cenicienta vive con su madrastra y sus dos hijas, quienes la obligan a realizar todas las tareas del hogar. Mientras tanto, en palacio, los reyes deciden organizar un baile real, al que Cenicienta no puede asistir, hasta que llega su hada madrina.", estreno:  "Estreno: 17 de enero de 1951", reparto: "Reparto: Ilene Woods, Eleanor Audley, Verna Felton", cancion: "Cancion: Cinderella", vestido: "Color de vestido: Azul cielo"))
        
    }
}

