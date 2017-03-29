//
//  PlaceObject.swift
//  SampleMVP
//
//  Created by Sanhanat Ngamchaiwong on 3/28/2560 BE.
//  Copyright © 2560 Sanhanat Ngamchaiwong. All rights reserved.
//

import Foundation

class PlaceObject:NSObject {
    
    var name:String! = nil
    var lat:Double! = 0
    var lon:Double! = 0
    
    func initWithDict(dict:NSDictionary) -> PlaceObject {

        name = dict.object(forKey: "name") as! String!
        lat = dict.object(forKey: "lat") as! Double!
        lon = dict.object(forKey: "lon") as! Double!
        
        return self
    }
    
    func toDict() -> [String:Any] {
        var dict = [String:Any]()
        dict["name"] = name
        dict["lat"] = lat
        dict["lon"] = lon
        return dict
    }
}
