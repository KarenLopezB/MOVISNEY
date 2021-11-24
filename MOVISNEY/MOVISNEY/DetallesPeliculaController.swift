//
//  DetallesPeliculaController.swift
//  MOVISNEY
//
//  Created by Alumno on 11/22/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import Foundation
import UIKit

class DetallesPeliculaController : UIViewController {

    var indice : Int = -1
    var callbackEliminarPelicula : ((Pelicula) -> Void)?

    var pelicula : Pelicula = Pelicula(nombre: "", año: "", duracion: "", calificacion: "", directores: "", descripcion: "", estreno: "", reparto: "", cancion: "", vestido: "")
    
    @IBOutlet weak var lblNombre1: UILabel!
    @IBOutlet weak var lblAno1: UILabel!
    @IBOutlet weak var lblDuracion1: UILabel!
    @IBOutlet weak var lblCalificacion1: UILabel!
    @IBOutlet weak var lblDirectores1: UILabel!
    @IBOutlet weak var lblDescripcion: UILabel!
    @IBOutlet weak var lblEstreno: UILabel!
    @IBOutlet weak var lblReparto: UILabel!
    @IBOutlet weak var lblCancion: UILabel!
    @IBOutlet weak var lblVestido: UILabel!
    
    override func viewDidLoad() {
        self.title = pelicula.nombre
        
        lblNombre1.text = pelicula.nombre
        lblAno1.text = pelicula.año
        lblDuracion1.text = pelicula.duracion
        lblCalificacion1.text = pelicula.calificacion
        lblDirectores1.text = pelicula.directores
        lblDescripcion.text = pelicula.descripcion
        lblEstreno.text = pelicula.estreno
        lblReparto.text = pelicula.reparto
        lblCancion.text = pelicula.cancion
        lblVestido.text = pelicula.vestido
    }
    
    @IBAction func doTapEliminar(_ sender: Any) {
        callbackEliminarPelicula!(indice)
        self.navigationController!.popViewController(animated: true)
    }
    
}
