//
//  GreenViewController.swift
//  ViewsAndNavigationControls
//
//  Created by David Bueno on 20/4/21.
//

import UIKit

class GreenViewController: UIViewController {
    
    
    @IBOutlet weak var mySearchBar: UISearchBar!
    @IBOutlet weak var myLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //ocultar etiqueta
        myLabel.isHidden = true
        
        //llamamos a su delegado para capturar operaciones
        //que se realizan en la barra de busqueda
        
        mySearchBar.delegate = self //las delegación de operaciones
        //se haran en esta clase por eso self(this en java)
        
        
        
        
    }

}

extension GreenViewController: UISearchBarDelegate{
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        mySearchBar.resignFirstResponder() //para cerrar el teclado
        
        //accedemos a la propiedades de texto de la etiqueta
        myLabel.text = mySearchBar.text
        
        // hacer visible la etiqueta
        myLabel.isHidden = false
        
        
    }
}
