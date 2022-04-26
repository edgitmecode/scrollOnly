//
//  DataBinding.swift
//  ScrollOnly
//
//  Created by Edward Smith on 4/25/22.
//

import Foundation
// Populates the array of ModelOfData type with data fetched from json file
class DataBinding: ObservableObject {
   @Published var populatedQuotesArray = [ModelOfData]()
   
    // initialize the DataBinding class properties
    init() {
        // use static function/method to get qoutes data
        // method getLocalData returns r
        self.populatedQuotesArray = DataFetch.getLocalData()
        
            }
        
    }
