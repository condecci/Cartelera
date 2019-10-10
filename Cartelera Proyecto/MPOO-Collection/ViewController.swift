//
//  ViewController.swift
//  MPOO-Collection
//
//  Created by JM on 9/11/19.
//  Copyright © 2019 iosLab. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource {
    
    var peliculas:[Pelicula] = [
        Pelicula(poster: "tiburon", titulo: "A 47 Metros 2", clasificacion: "Clasificación: B "),
        Pelicula(poster: "obj", titulo: "Objetivo Whashington D.C.", clasificacion: "Clasificación: B"),
        Pelicula(poster: "a dos metros", titulo: "A Dos Metros de Ti", clasificacion: "Clasificación: A"),
        Pelicula(poster: "habitacion", titulo: "La Habitación", clasificacion: "Clasificación: C"),
        Pelicula(poster: "aladin", titulo: "Aladín", clasificacion: " Clasificación: A"),
        Pelicula(poster: "avengeres", titulo: "Avengers Endgame", clasificacion: "Clasificación: A"),
        Pelicula(poster: "joker", titulo: "Guasón", clasificacion: "Clasificación: C"),
        Pelicula(poster: "bum", titulo: "Bumblebee", clasificacion: "Clasificación: A"),
        Pelicula(poster: "carrie", titulo: "Carrie", clasificacion: "Clasificación: C"),
        Pelicula(poster: "bomba", titulo: "El Bombardeo",clasificacion: "Clasificación: B"),
        Pelicula(poster: "gangster", titulo: "Gangster Squad", clasificacion: "Clasificación: B"),
        Pelicula(poster: "ghost", titulo: "Ghostbusters", clasificacion: "Clasificación: B"),
        Pelicula(poster: "infierno", titulo: "Infierno Blanco", clasificacion: "Clasificación: B"),
        Pelicula(poster: "angry", titulo: "Angry Birds 2",clasificacion: "Clasificación: A"),
        Pelicula(poster: "dora", titulo: "Dora", clasificacion: "Clasificación: B"),
        Pelicula(poster: "JL", titulo: "La liga de la Justicia",clasificacion: "Clasificación: B"),
        Pelicula(poster: "miedo", titulo: "No Tengas Miedo a la Oscuridad",clasificacion: "Clasificación: C"),
        Pelicula(poster: "matar", titulo: "Matar o Morir", clasificacion: "Clasificación: B"),
        Pelicula(poster: "maldicion", titulo: "La Maldición de la Casa del Terror",clasificacion: "Clasificación: C"),
        Pelicula(poster: "reina", titulo: "El Cazador y la Reina de Hielo",clasificacion: "Clasificación: B"),
        Pelicula(poster: "star", titulo: "Star wars",clasificacion: "Clasificación: B"),
    ]
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vistaDos = segue.destination as! SecondViewController
        //La palabra self sirve para llamar la clase
        vistaDos.vista1 = self
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return peliculas.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cuadrito", for: indexPath) as! PeliculaCollectionViewCell
        
        cell.nombre.text = peliculas[indexPath.item].titulo
        cell.clasificacion.text = peliculas[indexPath.item].clasificacion
        
        cell.poster.image = UIImage(named: peliculas[indexPath.item].poster)
        
        return cell
    }
    
    

}

