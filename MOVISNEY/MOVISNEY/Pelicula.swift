//
//  Pelicula.swift
//  MOVISNEY
//
//  Created by Alumno on 11/16/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import Foundation

class Pelicula {
    var nombre = ""
    var año = ""
    var duracion = ""
    var calificacion = ""
    
    init(nombre: String, año: String, duracion: String, calificacion: String) {
        self.nombre = nombre
        self.año = año
        self.duracion = duracion
        self.calificacion = calificacion
    }
}
