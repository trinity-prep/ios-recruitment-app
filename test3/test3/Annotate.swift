//
//  Annotate.swift
//  test3
//
//  Created by StudentAdmin on 1/31/17.
//  Copyright © 2017 StudentAdmin. All rights reserved.
//  
//  This class is meant to apply annotations to the map view of the app.
//  MKAnnotation is not able to be directly initialized you must do it all yourself. 
//

import Foundation
import MapKit

class Annnotate : NSObject, MKAnnotation{
    let coordinate: CLLocationCoordinate2D
    let title: String?
    let subtitle: String?
    var locationImage: UIImage?
    
    init(coordinateIN: CLLocationCoordinate2D) {
        coordinate = coordinateIN
        title = nil
        subtitle = nil
    }
    
    init(coordinateIN: CLLocationCoordinate2D, titleIN: String?) {
        coordinate = coordinateIN
        title = titleIN
        subtitle = nil
    }
    
    init(coordinateIN: CLLocationCoordinate2D, titleIN: String?, subtitleIn: String?) {
        coordinate = coordinateIN
        title = titleIN
        subtitle = subtitleIn
    }
    
    func addImage(picture: UIImage) -> Bool
    {
        locationImage = picture
        return false
    }
        
}
