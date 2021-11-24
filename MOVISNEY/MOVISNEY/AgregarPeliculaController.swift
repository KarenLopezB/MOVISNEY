//
//  AgregarPeliculaController.swift
//  MOVISNEY
//
//  Created by Alumno on 11/23/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import Foundation
import UIKit

class AgregarPeliculaController : UIViewController {
    
    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtAno: UITextField!
    @IBOutlet weak var txtDuracion: UITextField!
    @IBOutlet weak var txtCalficacion: UITextField!
    @IBOutlet weak var txtDirectores: UITextField!
    @IBOutlet weak var txtDescripcion: UITextField!
    @IBOutlet weak var txtEstreno: UITextField!
    @IBOutlet weak var txtReparto: UITextField!
    @IBOutlet weak var txtCancion: UITextField!
    @IBOutlet weak var txtVestido: UITextField!

    var callbackAgregarPelicula : ((Pelicula) -> Void)?
    
    override func viewDidLoad() {
        self.title = "Agregar Pelicula"
    }

    @IBAction func doTapGuardar(_ sender: Any) {
        let nombre = txtNombre.text!
        let año = txtAno.text!
        let duracion = txtDuracion.text!
        let calificacion = txtCalficacion.text!
        let directores = txtDirectores.text!
        let descripcion = txtDescripcion.text!
        let estreno = txtEstreno.text!
        let reparto = txtReparto.text!
        let cancion = txtCancion.text!
        let vestido = txtVestido.text!
        
        let pelicula = Pelicula(nombre: nombre, año: año, duracion: duracion, calificacion: calificacion, directores: directores, descripcion: descripcion, estreno: estreno, reparto: reparto, cancion: cancion, vestido: vestido)
        
        callbackAgregarPelicula!(pelicula)
        
        self.navigationController?.popViewController(animated: true)
    }
}
