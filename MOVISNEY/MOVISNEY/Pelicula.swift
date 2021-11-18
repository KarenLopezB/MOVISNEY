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
    var directores = ""
    var descripcion = ""
    var estreno = ""
    var reparto = ""
    var cancion = ""
    var vestido = ""
    
    init(nombre: String, año: String, duracion: String, calificacion: String, directores: String, descripcion: String, estreno: String, reparto: String, cancion: String, vestido: String) {
        self.nombre = nombre
        self.año = año
        self.duracion = duracion
        self.calificacion = calificacion
        self.directores = directores
        self.descripcion = descripcion
        self.estreno = estreno
        self.reparto = reparto
        self.cancion = cancion
        self.vestido = vestido
    }
}
