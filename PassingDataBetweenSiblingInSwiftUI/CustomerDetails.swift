//
//  CustomerDetails.swift
//  PassingDataBetweenSiblingInSwiftUI
//
//  Created by Ramill Ibragimov on 13.01.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct CustomerDetails: View {
    @Binding var selectedNumber: Int
    var body: some View {
        Text("\(self.selectedNumber)")
    }
}

struct CustomerDetails_Previews: PreviewProvider {
    static var previews: some View {
        CustomerDetails(selectedNumber: .constant(1))
    }
}
