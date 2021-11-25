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

    var pelicula : Pelicula?
    var indice : Int = -1

    var callbackEliminarPelicula : ((Int) -> Void)?
    var callbackActualizarTablaPeliculas : (() -> Void)?
    
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
    
    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtAno: UITextField!
    @IBOutlet weak var txtDuracion: UITextField!
    @IBOutlet weak var txtCalificacion: UITextField!
    @IBOutlet weak var txtDirectores: UITextField!
    @IBOutlet weak var txtDescripcion: UITextField!
    @IBOutlet weak var txtEstreno: UITextField!
    @IBOutlet weak var txtReparto: UITextField!
    @IBOutlet weak var txtCancion: UITextField!
    @IBOutlet weak var txtVestido: UITextField!
    
    @IBOutlet weak var btnEliminar: UIButton!
    @IBOutlet weak var btnEditar: UIBarButtonItem!
    @IBOutlet weak var btnCancelar: UIButton!
    
    var editando = false
    
    override func viewDidLoad() {
        self.title = "Detalles de la pelicula"
        
        if pelicula != nil {
            lblNombre1.text = pelicula!.nombre
            lblAno1.text = pelicula!.año
            lblDuracion1.text = pelicula!.duracion
            lblCalificacion1.text = pelicula!.calificacion
            lblDirectores1.text = pelicula!.directores
            lblDescripcion.text = pelicula!.descripcion
            lblEstreno.text = pelicula!.estreno
            lblReparto.text = pelicula!.reparto
            lblCancion.text = pelicula!.cancion
            lblVestido.text = pelicula!.vestido
            
            txtNombre.text = pelicula!.nombre
            txtAno.text = pelicula!.año
            txtDuracion.text = pelicula!.duracion
            txtCalificacion.text = pelicula!.calificacion
            txtDirectores.text = pelicula!.directores
            txtDescripcion.text = pelicula!.descripcion
            txtEstreno.text = pelicula!.estreno
            txtReparto.text = pelicula!.reparto
            txtCancion.text = pelicula!.cancion
            txtVestido.text = pelicula!.vestido
        }
        txtNombre.isHidden = true
        txtAno.isHidden = true
        txtDuracion.isHidden = true
        txtCalificacion.isHidden = true
        txtDirectores.isHidden = true
        txtDescripcion.isHidden = true
        txtEstreno.isHidden = true
        txtReparto.isHidden = true
        txtCancion.isHidden = true
        txtVestido.isHidden = true
        btnCancelar.isHidden = true
    }
    
    @IBAction func doTapEliminar(_ sender: Any) {
        callbackEliminarPelicula!(indice)
        self.navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func doTapCancelarrr(_ sender: Any) {
        editando = false
        
        lblNombre1.isHidden = false
        lblAno1.isHidden = false
        lblDuracion1.isHidden = false
        lblCalificacion1.isHidden = false
        lblDirectores1.isHidden = false
        lblDescripcion.isHidden = false
        lblEstreno.isHidden = false
        lblReparto.isHidden = false
        lblCancion.isHidden = false
        lblVestido.isHidden = false
        
        txtNombre.isHidden = true
        txtAno.isHidden = true
        txtDuracion.isHidden = true
        txtCalificacion.isHidden = true
        txtDirectores.isHidden = true
        txtDescripcion.isHidden = true
        txtEstreno.isHidden = true
        txtReparto.isHidden = true
        txtCancion.isHidden = true
        txtVestido.isHidden = true
        
        btnEliminar.isHidden = false
        btnEditar.title = "Editar"
        btnCancelar.isHidden = true
    }
    
    @IBAction func doTapEditar(_ sender: Any) {
        editando = !editando
        
        if editando{
            lblNombre1.isHidden = true
            lblAno1.isHidden = true
            lblDuracion1.isHidden = true
            lblCalificacion1.isHidden = true
            lblDirectores1.isHidden = true
            lblDescripcion.isHidden = true
            lblEstreno.isHidden = true
            lblReparto.isHidden = true
            lblCancion.isHidden = true
            lblVestido.isHidden = true
            
            txtNombre.isHidden = false
            txtAno.isHidden = false
            txtDuracion.isHidden = false
            txtCalificacion.isHidden = false
            txtDirectores.isHidden = false
            txtDescripcion.isHidden = false
            txtEstreno.isHidden = false
            txtReparto.isHidden = false
            txtCancion.isHidden = false
            txtVestido.isHidden = false
            
            btnEliminar.isHidden = true
            btnEditar.title = "Guardar"
            btnCancelar.isHidden = false
        } else {
            pelicula?.nombre = txtNombre.text!
            pelicula?.año = txtAno.text!
            pelicula?.duracion = txtDuracion.text!
            pelicula?.calificacion = txtCalificacion.text!
            pelicula?.directores = txtDirectores.text!
            pelicula?.descripcion = txtDescripcion.text!
            pelicula?.estreno = txtEstreno.text!
            pelicula?.reparto = txtReparto.text!
            pelicula?.cancion = txtCancion.text!
            pelicula?.vestido = txtVestido.text!
                    
            lblNombre1.text = txtNombre.text
            lblAno1.text = txtAno.text
            lblDuracion1.text = txtDuracion.text
            lblCalificacion1.text = txtCalificacion.text
            lblDirectores1.text = txtDirectores.text
            lblDescripcion.text = txtDescripcion.text
            lblEstreno.text = txtEstreno.text
            lblReparto.text = txtReparto.text
            lblCancion.text = txtCancion.text
            lblVestido.text = txtVestido.text
            
            callbackActualizarTablaPeliculas!()
            
            lblNombre1.isHidden = false
            lblAno1.isHidden = false
            lblDuracion1.isHidden = false
            lblCalificacion1.isHidden = false
            lblDirectores1.isHidden = false
            lblDescripcion.isHidden = false
            lblEstreno.isHidden = false
            lblReparto.isHidden = false
            lblCancion.isHidden = false
            lblVestido.isHidden = false
            
            txtNombre.isHidden = true
            txtAno.isHidden = true
            txtDuracion.isHidden = true
            txtCalificacion.isHidden = true
            txtDirectores.isHidden = true
            txtDescripcion.isHidden = true
            txtEstreno.isHidden = true
            txtReparto.isHidden = true
            txtCancion.isHidden = true
            txtVestido.isHidden = true
            
            btnEliminar.isHidden = false
            btnEditar.title = "Editar"
            btnCancelar.isHidden = true
        }
    }
}
