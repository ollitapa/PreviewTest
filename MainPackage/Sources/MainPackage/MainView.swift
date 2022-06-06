//
//  MainView.swift
//  
//
//  Created by Olli Tapaninen on 7.10.2020.
//

import SwiftUI
import Package1
import Package2

struct MainView: View {

    /// This view will now render on Preview using the `Bundle.framework` workaround
    var body: some View {
        VStack {
            Package1View()
            Package2View()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
