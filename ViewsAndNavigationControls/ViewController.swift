//
//  ViewController.swift
//  ViewsAndNavigationControls
//
//  Created by David Bueno on 20/4/21.
//

import UIKit
import WebKit
import MapKit

class ViewController: UIViewController {

  
    
    @IBOutlet weak var myView: UIView!
    
    @IBOutlet weak var myImage: UIImageView!
    
    @IBOutlet weak var myFakeView: UIView!
    
    @IBOutlet weak var myWebView: WKWebView!
    
    @IBOutlet weak var myMap: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Título
        title = "My View Controller"
        
        //acceder al webview
        myWebView.load(URLRequest(url: URL(string: "https://google.es")!))
        
        //Acceder al mapa
        myMap.centerCoordinate = CLLocationCoordinate2D(latitude: 38.1305200  , longitude: -3.8874700 )
    }

    @IBAction func myButtonAction(_ sender: Any) {
        myFakeView.isHidden = true
    }
    
}

