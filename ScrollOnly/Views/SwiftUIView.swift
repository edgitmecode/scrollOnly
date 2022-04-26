//
//  SwiftUIView.swift
//  ScrollOnly
//
//  Created by Edward Smith on 4/22/22.
//

import SwiftUI

struct SwiftUIView: View {
    // receive one array index from ModelOfData
    var textParameter: String
    var body: some View {
        
        // A quote from "ModelOfData.author"
        Text("This is " + textParameter)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView(textParameter: " ")
    }
}
