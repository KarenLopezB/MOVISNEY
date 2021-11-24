//
//  ViewController.swift
//  MOVISNEY
//
//  Created by Alumno on 11/16/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tvPelis: UITableView!
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToEdicion" {
                let peliculaSeleccionado = peliculas[tvContactos.indexPathForSelectedRow!.row]
                let destino = segue.destination as! DetallesPeliculaController
                destino.pelicula = peliculaSeleccionado
                destino.indice = tvContactos.indexPathForSelectedRow!.row
                destino.callbackActualizarTablaPeliculas = actualizarTablaPeliculas
                destino.callbackEliminarPelicula = eliminarPelicula
        }
        if segue.identifier == "goToCreacion" {
            let destino = segue.destination as! AgregarPeliculaController
            destino.callbackAgregarPelicula = agregarPelicula
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        peliculas.append(Pelicula(nombre: "La Cenicienta", año: "Año: 1950", duracion: "Duracion: 1h 16 min", calificacion: "Calificacion: 4.2 / 5", directores: "Directores: Clyde Geronimi, Hamilton Luske, Wilfred Jackson", descripcion: "Descripcion: Cenicienta vive con su madrastra y sus dos hijas, quienes la obligan a realizar todas las tareas del hogar. Mientras tanto, en palacio, los reyes deciden organizar un baile real, al que Cenicienta no puede asistir, hasta que llega su hada madrina.", estreno:  "Estreno: 17 de enero de 1951", reparto: "Reparto: Ilene Woods, Eleanor Audley, Verna Felton", cancion: "Cancion: Cinderella", vestido: "Color de vestido: Azul cielo"))
        peliculas.append(Pelicula(nombre: "Blancanieves y los siete enanos", año: "Año: 1937", duracion: "Duración: 1h 23 min", calificacion: "Calificación: 4.1 / 5", directores: "Directores: David Hand, Larry Morey, Ben Sharpsteen, William Cottrell, Wilfred Jackson, Percival C. Pearce ", descripcion: "Descripción: La malvada madrastra de Blancanieves no puede soportar que la belleza de la joven sea superior a la suya y decide acabar con su vida. La bellísima Blancanieves consigue refugiarse en una minúscula cabaña del bosque en la que habitan siete simpáticos enanitos.", estreno:  "Estreno: 21 de julio de 1938", reparto: "Reparto: Adriana Caselotti, Lucille La Verne, Harry Stockwell", cancion: "Canción: Overture", vestido: "Color de vestido: Azul con amarillo"))
        peliculas.append(Pelicula(nombre: "La Sirenita", año: "Año: 1989", duracion: "Duración: 1h 23 min", calificacion: "Calificación: 4.2 / 5", directores: "Directores: Ron Clements, John Musker ", descripcion: "Descripción: La sirena Ariel está fascinada por el mundo de los humanos, pero su padre le prohíbe relacionarse con ellos. En un viaje secreto, se enamora de un humano y recurre a una perversa hechicera para que, mediante un conjuro, su amor triunfe.", estreno:  "Estreno: 17 de noviembre de 1989", reparto: "Reparto: Jodi Benson, Howard Ashman, Samuel E. Wright", cancion: "Canción: Fathoms Below", vestido: "Color de vestuario: Morado y verde"))
        peliculas.append(Pelicula(nombre: "La bella durmiente", año: "Año: 1959", duracion: "Duración: 1h 15 min", calificacion: "Calificación: 3.8 / 5", directores: "Directores: Wolfgang Reitherman, Clyde Geronimi, Eric Larson, Les Clark", descripcion: "Descripción: Había una vez dos reyes que olvidaron invitar a la malvada bruja Maléfica al cumpleaños de su hija Aurora. Maléfica, enfurecida, lanzó un terrible hechizo sobre la princesa. Pero sus tres hadas madrinas descubren una forma de romper el maleficio.", estreno:  "Estreno: 24 de diciembre de 1959", reparto: "Reparto: Eleanor Audley, Mary Costa, Verna Felton", cancion: "Canción: Io Lo So", vestido: "Color de vestido: Rosa"))
        peliculas.append(Pelicula(nombre: "La bella y la bestia", año: "Año: 1991", duracion: "Duración: 1h 24 min", calificacion: "Calificación: 4.4 / 5", directores: "Directores: Gary Trousdale, Kirk Wise ", descripcion: "Descripción: Una hermosa joven llamada Bella, acepta alojarse en un castillo con una bestia a cambio de la libertad de su padre. El animal es en realidad un príncipe encantado que, para romper el hechizo, tendrá que ganarse el amor de una dama.", estreno:  "Estreno: 13 de noviembre de 1991", reparto: "Reparto: Paige O’Hara, Angela Lansbury, Robby Benson", cancion: "Canción: La Bella", vestido: "Color de vestido: Amarillo"))
        peliculas.append(Pelicula(nombre: "Valiente", año: "Año: 2012", duracion: "Duración: 1h 33 min", calificacion: "Calificación: 4.4 / 5", directores: "Directores: Brenda Chapman, Mark Andrews", descripcion: "Descripción: Merida, la impetuosa y valiente hija de un rey escocés Fergus y de la reina Elinor, es una hábil arquera que desea surcar su propio camino en la vida. Merida debe descubrir el significado del coraje y deshacer una maldición bestial antes de que sea tarde.", estreno:  "Estreno: 22 de junio de 2012", reparto: "Reparto: Kelly Macdonald, Emma Thompson, Billy Connolly", cancion: "Canción: Viento y cielo alcanzar", vestido: "Color de vestuario: Verde Oscuro"))
        peliculas.append(Pelicula(nombre: "Mulán", año: "Año: 1998", duracion: "Duración: 1h 28 min", calificacion: "Calificación: 4.1 / 5", directores: "Directores: Tony Bancroft, Barry Cook", descripcion: "Descripción: El ejército de los Hunos, encabezado por el malvado Shun Yiu, quiere conquistar China. El emperador, para impedírselo, ha mandado a filas a todos los varones con el fin de proteger el imperio. Por otra parte, Mulán es una chica joven y valiente que vive en una aldea.", estreno:  "Estreno: 5 de junio de 1998", reparto: "Reparto: Ming-Na Wen, Eddie Murphy, BD Wong", cancion: "Canción: Hombres de Acción", vestido: "Color de vestido: Azul cielo, azul marino y rojo"))
        peliculas.append(Pelicula(nombre: "Enredados", año: "Año: 2010", duracion: "Duración: 1h 40 min", calificacion: "Calificación: 4.3 / 5", directores: "Directores: Byron Howard, Nathan Greno", descripcion: "Descripción: Flynn rider, el más buscado y encantador bandido del reino, se esconde en una misteriosa torre y allí se encuentra con Rapunzel, una bella y avispada adolescente con una cabellera dorada de 21 metros de largo, que vive encerrada allí desde hace años.", estreno:  "Estreno: 26 de noviembre de 2010", reparto: "Reparto: Mandy Moore, Zachary Levi, Paul F. Tompkins", cancion: "Canción: When Will My Life Begin?", vestido: "Color de vestido: Rosa"))
        peliculas.append(Pelicula(nombre: "Pocahontas", año: "Año: 1995", duracion: "Duración: 1h 21 min", calificacion: "Calificación: 3.9 / 5", directores: "Directores: Eric Goldberg, Mike Gabriel", descripcion: "Descripción: Pocahontas es la hija de Powhatan, el jefe de una tribu india de América del Norte. Un día observa la llegada de un grupo de colones ingleses, encabezados por el ambicioso gobernador Radcliff y el valiente capitán John Smith.", estreno:  "Estreno: 23 de junio de 1995", reparto: "Reparto: Mel Gibson, Irene Bedard, Christian Bale", cancion: "Canción: The Virginia Company ", vestido: "Color de vestuario: Café"))
        peliculas.append(Pelicula(nombre: "La princesa y el sapo", año: "Año: 2009", duracion: "Duración: 1h 37 min", calificacion: "Calificación: 3.5 / 5", directores: "Directores: John Musker, Ron Clements", descripcion: "Descripción: La trabajadora y ambiciosa, Tiana sueña con abrir el restaurante más fino de Nueva Orleans. Su sueño se desvía un poco cuando conoce al príncipe Naveen, quien ha sido transformado en un anfibio por el Dr. Facilier. Confundiéndola con una princesa y esperando romper el hechizo, Naveen le da un beso a la pobre Tiana, transformándola en una rana.", estreno:  "Estreno: 11 de diciembre de 2009", reparto: "Reparto: Anika Noni Rosa, Keith David, Jenifer Lewis", cancion: "Canción: Never Knew I Needed", vestido: "Color de vestido: Verde"))
        
    }
    
    func eliminarPelicula(pelicula : Pelicula) {
        peliculas.remove(at: indice)
        actualizarTablaPeliculas()
    }
    
    func agregarPelicula(pelicula : Pelicula) {
        peliculas.append(pelicula)
        actualizarTablaPeliculas()
    }
}

