//
//  PlaceModel.swift
//  MyPlaces
//
//  Created by Жоооопаааа on 06.06.2022.
//

import UIKit

struct Place {
    
    var name: String
    var location: String?
    var type: String?
    var image: UIImage?
    var restourantImage: String?
    
    static let placesName = ["Fарш","Gagawa","McDonald's"]
    
    static func getPlaces() -> [Place] {
        
        var places = [Place]()
        
        for place in placesName {
            places.append(Place(name: place, location: "Москва", type: "Ресторан", image: nil, restourantImage: place))
        }
        
        return places
        
    }
}
