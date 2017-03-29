//
//  DBManager.swift
//  SampleMVP
//
//  Created by Sanhanat Ngamchaiwong on 3/27/2560 BE.
//  Copyright © 2560 Sanhanat Ngamchaiwong. All rights reserved.
//

import Foundation

class DBManager:NSObject {
     private let places = [["name":"Amsterdam","lat":13.755762,"lon":100.564569],
                     ["name":"Calypzo Hotel","lat":13.774847,"lon":100.572809],
                     ["name":"Poseidon","lat":13.785420,"lon":100.573558],
                     ["name":"Colonze","lat":13.749665,"lon":100.600692],
                     ["name":"Emmanuelle","lat":13.776907,"lon":100.572861]]
    
    func getPlaces() -> [PlaceObject]{
        var placeObjs = [PlaceObject]()
        for i in 0..<places.count {
            let dict:NSDictionary = places[i] as NSDictionary
            let plactObject = PlaceObject().initWithDict(dict: dict)
            placeObjs.append(plactObject)
        }
        return placeObjs
    }
}
