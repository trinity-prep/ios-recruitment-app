//
//  SecondViewController.swift
//  test3
//
//  Created by StudentAdmin on 12/15/16.
//  Copyright © 2016 StudentAdmin. All rights reserved.
//

import UIKit
import MapKit
import Foundation

class SecondViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let theSchool = CLLocationCoordinate2D(latitude: 28.610609, longitude: -81.271120) //coordinates of the center of the quad
        mapSetUp(location: theSchool)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    let zoom : CLLocationDistance = 300
    func mapSetUp(location : CLLocationCoordinate2D){
        mapView.mapType = MKMapType.satellite
        mapView.isZoomEnabled = true;
        mapView.setCenter(location, animated: true)
        let region:MKCoordinateRegion = MKCoordinateRegionMakeWithDistance(location, zoom, zoom)
        let trinity:Annnotate = Annnotate(coordinateIN: location, titleIN: "Trinity", subtitleIn: "The School")
        mapView.addAnnotation(trinity)
        mapView.setRegion(region, animated: true)
    }

}

