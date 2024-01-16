//
//  MenuItemView.swift
//  HuliPizza
//
//  Created by Mateo Mercado Maguiña on 16/1/24.
//

import SwiftUI

struct MenuItemView: View {
    var body: some View {
        VStack {
            if let image = UIImage(named: "0_lg") {
                Image(uiImage: image)
            } else {
                Image("surfboard_sm")
            }
            Text("Margharita")
            Text("Description")
        }
    }
}

#Preview {
    MenuItemView()
}
