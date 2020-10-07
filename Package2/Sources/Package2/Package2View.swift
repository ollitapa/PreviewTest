//
//  Package2View.swift
//  
//
//  Created by Olli Tapaninen on 7.10.2020.
//

import SwiftUI
import Foundation

public struct Package2View: View {
    public init() {}

    public var body: some View {
        Image("search", bundle: Bundle.module)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding()
            .padding()
    }
}

struct Package2View_Previews: PreviewProvider {
    static var previews: some View {
        Package2View()
    }
}
