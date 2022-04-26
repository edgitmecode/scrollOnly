//
//  DataFetch.swift
//  ScrollOnly
//
//  Created by Edward Smith on 4/25/22.
//

import Foundation

class DataFetch {
   // use static to create data type
   static func getLocalData() -> [ModelOfData] {
        /* Parse data from json file */
        // Get a url path to the json file
        // pathString is optional
        let pathString = Bundle.main.path(forResource: "quotes2", ofType: "json")
        guard pathString != nil else{
            return [ModelOfData]()
        }
        // Create url object
        // pathString already checked for nil so ok to use !
        // contentsOf "throws" so use do try catch
        let url = URL(fileURLWithPath: pathString!)
        do {
            let data = try Data(contentsOf: url) // Create data object
            // decode data
            let decoder = JSONDecoder() // create instance of json decoder
            // decode "throws"
            do {
                let quotesArray = try decoder.decode([ModelOfData].self, from: data)
                // Add unique IDs
                for r in quotesArray {
                   r.id = UUID()
               }
                // return the populated array
                return quotesArray
                
            }
            catch {
                print("data url error1")
            }
 

        }
        catch {
            print("data contents error2")
        }
        
      return [ModelOfData]() // return empty array if
        
    }
}
