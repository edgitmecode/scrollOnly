//
//  ModelOfData.swift
//  ScrollOnly
//
//  Created by Edward Smith on 4/24/22.
//

import Foundation

class ModelOfData: Identifiable, Decodable {
    
    var id:UUID?
    var author:String
    var quote:String
}
