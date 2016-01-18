//
//  GeoLocation.swift
//  TakeMeTo
//
//  Created by Michael K on 1/15/16.
//  Copyright © 2016 Michael Kohl. All rights reserved.
//

import UIKit
import MapKit

class GeoLocation: NSObject {
  let latitude: Double
  let longitude: Double
  
  var coordinate: CLLocationCoordinate2D {
    return CLLocationCoordinate2DMake(self.latitude, self.longitude)
  }
  
  init(latitude: Double, longitude: Double) {
    self.latitude = latitude
    self.longitude = longitude
  }
}
