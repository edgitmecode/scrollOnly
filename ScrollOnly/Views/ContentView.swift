//
//  ContentView.swift
//  ScrollOnly
//
//  Created by Edward Smith on 4/22/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var objOfDataBinding = DataBinding()
    
    var body: some View {
        
        let flowerImageArray = ["flower1", "flower2", "flower3", "flower4", "flower5", "flower6", "flower7"]
 
        
        NavigationView {
            ScrollView {
                
                ForEach (flowerImageArray, id: \.self) { flowerString in
                    // get random quote
                   
                    let randomQuote = objOfDataBinding.populatedQuotesArray[Int.random(in: 0...20)]
                    let quote = randomQuote.quote
                    let author = randomQuote.author
                    
                    VStack {  // label = clickable screen area
                        NavigationLink(destination:SwiftUIView(textParameter: author),label: {
                            VStack {
                                Image(flowerString).resizable().frame(width: /*@START_MENU_TOKEN@*/300.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/300.0/*@END_MENU_TOKEN@*/)
                                // "ModelOfData.quote"
                                Text(quote).font(.headline).foregroundColor(Color.blue).bold()
                                
                            }
                            
                        })
                    }
                }
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
