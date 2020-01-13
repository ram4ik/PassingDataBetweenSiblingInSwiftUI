//
//  ContentView.swift
//  PassingDataBetweenSiblingInSwiftUI
//
//  Created by Ramill Ibragimov on 13.01.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedNumber: Int = -1
    
    var body: some View {
        VStack {
            CustomerList(selectedItem: self.$selectedNumber)
            GeometryReader { g in
                CustomerDetails(selectedNumber: self.$selectedNumber)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
