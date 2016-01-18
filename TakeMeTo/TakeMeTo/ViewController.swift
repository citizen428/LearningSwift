//
//  ViewController.swift
//  TakeMeTo
//
//  Created by Michael K on 1/15/16.
//  Copyright © 2016 Michael Kohl. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {
  
  @IBOutlet weak var mapView: MKMapView!
  var country: Country?
  var locationManager = CLLocationManager()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.locationManager.delegate = self
    self.locationManager.requestWhenInUseAuthorization()
  }
  
  override func viewDidAppear(animated: Bool) {
    super.viewDidAppear(animated)
    
    if let country = country {
      updateMapLocation(country.geoLocation.coordinate)
      self.mapView.addAnnotation(country)
    }
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
  
  @IBAction func goToCurrentLocation(sender: AnyObject) {
    locationManager.requestLocation()
  }
  
  func updateMapLocation(coordinate: CLLocationCoordinate2D) {
    let region = MKCoordinateRegionMake(coordinate, MKCoordinateSpan(latitudeDelta: 4, longitudeDelta: 4))
    self.mapView.setRegion(region, animated: true)
  }
}

extension ViewController: CLLocationManagerDelegate {
  // MARK: CLLocationManagerDelegate
  func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
    updateMapLocation((locations.last?.coordinate)!)    
  }
  
  func locationManager(manager: CLLocationManager, didFailWithError error: NSError) {
    print(error)
  }
}

