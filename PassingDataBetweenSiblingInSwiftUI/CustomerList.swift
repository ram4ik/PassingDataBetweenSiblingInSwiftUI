//
//  CustomerList.swift
//  PassingDataBetweenSiblingInSwiftUI
//
//  Created by Ramill Ibragimov on 13.01.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct CustomerList: View {
    @Binding var selectedItem: Int
    
    var body: some View {
        List(0...100, id: \.self) { index in
            HStack {
                Text("\(index)")
                Spacer()
            }.contentShape(Rectangle())
                .onTapGesture {
                    self.selectedItem = index
            }
        }
    }
}

struct CustomerList_Previews: PreviewProvider {
    static var previews: some View {
        CustomerList(selectedItem: .constant(1))
    }
}
