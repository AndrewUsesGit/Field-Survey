//
//  ObservationJSONLoader.swift
//  Field Survey
//
//  Created by Andrew W Stoll on 11/3/17.
//  Copyright © 2017 Andrew W Stoll. All rights reserved.
//

import Foundation

class ObservationJSONLoader {
    
    class func load(fileName: String) -> [FieldObservation]{
        var observations = [FieldObservation]()
        
        if  let path = Bundle.main.path(forResource: fileName, ofType: "json"),
            let data = try? Data(contentsOf: URL(fileURLWithPath: path)) {
            observations = ObservationJSONParser.parse(data)
        }
        return observations
    }
    
}
