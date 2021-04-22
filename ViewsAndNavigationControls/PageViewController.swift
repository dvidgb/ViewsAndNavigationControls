//
//  PageViewController.swift
//  ViewsAndNavigationControls
//
//  Created by David Bueno on 20/4/21.
//

import UIKit

class PageViewController: UIPageViewController {
    
    //variable privada para los controladores
    private var myControllers: [UIViewController] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        //Constante
        let myGreenVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "vcGreen")
        
        let myPinkVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "vcPink")
        
        //añadir los dos controladores de arriba al array creado anteriormente
        myControllers.append(myGreenVC)
        myControllers.append(myPinkVC)
        
        //operación setviewcontrollers
        setViewControllers([myGreenVC], direction: .forward , animated: true, completion: nil)
        
        //para que las operaciones delegadas de abajo se ejecuten en este clase
        //el self equivale a this en java
        dataSource = self
        
        
    }
    
}

//creamos una extesión de uipagecontrollerdatasource para implementar
//Distintas operaciones al pageviewcontroller
//para mostrar paginas

extension PageViewController: UIPageViewControllerDataSource{
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        //constante para guardar la posición de la pagina contenida en el array
        let index = myControllers.firstIndex(of: viewController)
        
        //comprobación de que pagina es
        if index == 0{
            return myControllers.last
        }
        return myControllers.first
        
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        //constante para guardar la posición de la pagina contenida en el array
        let index = myControllers.firstIndex(of: viewController)
        
        //comprobación de que pagina es
        if index == 0{
            return myControllers.last
        }
        return myControllers.first
    }
    
}
