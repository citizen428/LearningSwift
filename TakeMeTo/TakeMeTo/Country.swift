//
//  Country.swift
//  TakeMeTo
//
//  Created by Michael K on 1/15/16.
//  Copyright © 2016 Michael Kohl. All rights reserved.
//

import Foundation
import MapKit

class Country: NSObject {
  let name: String
  let geoLocation: GeoLocation
  
  init(name: String, latitude: Double, longitude: Double) {
    self.name = name
    self.geoLocation = GeoLocation(latitude: latitude, longitude: longitude)
  }
}

extension Country: MKAnnotation {
  // MARK: MKAnnotation
  var title: String? {
    return name
  }
  
  var subtitle: String? {
    return("\(geoLocation.latitude), \(geoLocation.longitude)")
  }
  
  var coordinate: CLLocationCoordinate2D {
    return geoLocation.coordinate
  }
}

