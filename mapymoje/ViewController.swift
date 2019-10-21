//
//  ViewController.swift
//  mapymoje
//
//  Created by student on 21/10/2019.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

    
    @IBOutlet weak var mapy: MKMapView!
    
    @IBOutlet weak var Krakow: UIButton!
    
    
    @IBAction func pokazKrakow(_ sender: Any)
    {
        let location = CLLocationCoordinate2DMake(50.0246289, 19.8924691)
        let span = MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        let region = MKCoordinateRegion(center: location, span: span)
        self.mapy.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate.latitude = location.latitude
        annotation.coordinate.longitude = location.longitude
        annotation.title = "Krakow"
        annotation.subtitle = "Kampus UJ"
        self.mapy.addAnnotation(annotation)
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

