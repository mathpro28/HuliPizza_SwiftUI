//
//  HeaderView.swift
//  HuliPizza
//
//  Created by Mateo Mercado Maguiña on 16/1/24.
//

import SwiftUI

struct HeaderView: View {
    @EnvironmentObject var orders:OrderModel
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image("surfBanner")
                    .resizable()
                    .scaledToFit()
    //                .scaledToFill()
                    .ignoresSafeArea()
                Text("Huli Pizza Company")
                    .font(.custom("Georgia", size: 30, relativeTo: .title))
    //                .foregroundColor(Color("Sky"))
                    .foregroundStyle(.regularMaterial)
                    .fontWeight(.semibold)
            }
            Label {
                Text(orders.orderTotal, format: .currency(code: "USD"))
            }
            icon: {
                Image(systemName: orders.orderItems.isEmpty ? "cart": "cart.circle.fill")
            }
        }
        .background(.ultraThinMaterial)
    }
}

#Preview {
    HeaderView().environmentObject(OrderModel())
}
