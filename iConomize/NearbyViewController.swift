//
//  NearbyViewController.swift
//  iConomize
//
//  Created by Thiago Durante Pires on 01/12/16.
//  Copyright © 2016 Inf. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class NearbyViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    var locationManager = CLLocationManager()
    var userLocation = CLLocation()
    var partner = [String: Partner]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        partner["outback"] = Partner.outbackSteakhouse()
        partner["madero"] = Partner.restauranteMadero()
        
        checkLocationAuthorizationStatus()
        setupLocation()
        centerMapOnLocation()
        markPartnersLocations()
        
        mapView.setUserTrackingMode(MKUserTrackingMode.Follow, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func checkLocationAuthorizationStatus() {
        if CLLocationManager.authorizationStatus() != .AuthorizedWhenInUse {
            locationManager.requestWhenInUseAuthorization()
        }
        
        locationManager.startUpdatingLocation()
    }
    
    func setupLocation() {
        locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
        locationManager.delegate = self
    }
    
    func centerMapOnLocation() {
        let latDelta: CLLocationDegrees = 0.05
        let longDelta: CLLocationDegrees = 0.05
        
        let span = MKCoordinateSpanMake(latDelta, longDelta)
        let location = CLLocationCoordinate2DMake(userLocation.coordinate.latitude, userLocation.coordinate.longitude)
        
        let region = MKCoordinateRegionMake(location, span)
        
        mapView.setRegion(region, animated: true)
    }
        
    func markPartnersLocations() {
        let location1 = CLLocationCoordinate2DMake((partner["outback"]?.mapLat)!, (partner["outback"]?.mapLong)!)
        
        let newAnnotation1 = MKPointAnnotation()
        newAnnotation1.coordinate = location1
        newAnnotation1.title = partner["outback"]?.name
        newAnnotation1.subtitle = partner["outback"]?.description
        
        let location2 = CLLocationCoordinate2DMake((partner["madero"]?.mapLat)!, (partner["madero"]?.mapLong)!)
        
        let newAnnotation2 = MKPointAnnotation()
        newAnnotation2.coordinate = location2
        newAnnotation2.title = partner["madero"]?.name
        newAnnotation2.subtitle = partner["madero"]?.description
        
        mapView.addAnnotation(newAnnotation1)
        mapView.addAnnotation(newAnnotation2)
    }
    
    // MARK: CLLocationManagerDelegate
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if locations.count > 0 {
            userLocation = locations.last!
        }
        
        // print("Localização atual: \(userLocation.coordinate)")
    }

}
