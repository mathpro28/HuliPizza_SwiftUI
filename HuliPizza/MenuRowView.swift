//
//  MenuRowView.swift
//  HuliPizza
//
//  Created by Mateo Mercado Maguiña on 16/1/24.
//

import SwiftUI

struct MenuRowView: View {
    var item: Int
    var body: some View {
        HStack(alignment: .top, spacing: 15) {
            if let image = UIImage(named: "\(item)_sm") {
                Image(uiImage: image)
            }
            VStack(alignment: .leading) {
                Text("Margharita")
                Text("Description")
            }
        }
    }
}

#Preview {
    MenuRowView(item: 6)
}
