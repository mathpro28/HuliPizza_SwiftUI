//
//  HeaderView.swift
//  HuliPizza
//
//  Created by Mateo Mercado Maguiña on 16/1/24.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack {
            Image("surfBanner")
                .resizable()
            .scaledToFit()
            Text("Huli Pizza Company")
                .background()
        }
    }
}

#Preview {
    HeaderView()
}
