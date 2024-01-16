//
//  MenuView.swift
//  HuliPizza
//
//  Created by Mateo Mercado Maguiña on 16/1/24.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        ScrollView() {
            ForEach(1...10, id: \.self) { item in
                MenuRowView(item: item)
            }
        }
    }
}

#Preview {
    MenuView()
}
