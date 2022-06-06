//
//  Package1View.swift
//  
//
//  Created by Olli Tapaninen on 7.10.2020.
//

import SwiftUI

public struct Package1View: View {
    public init() {}

    public var body: some View {
        Image("raining", bundle: Bundle.framework)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding()
            .padding()
    }
}

struct Package1View_Previews: PreviewProvider {
    static var previews: some View {
        Package1View()
    }
}
