//
//  OrderView.swift
//  HuliPizza
//
//  Created by Mateo Mercado Maguiña on 16/1/24.
//

import SwiftUI

struct OrderView: View {
    @Binding var orders:[OrderItem]
    var body: some View {
        VStack {
            ZStack(alignment: .top) {
                ScrollView {
                    ForEach($orders) { order in
//                        Text(order.item.name)
                        OrderRowView(order: order)
                            .padding(4)
                            .background(.regularMaterial, in:RoundedRectangle(cornerRadius: 10))
                            .shadow(radius: 10)
                            .padding(.bottom, 5)
                            .padding([.leading, .trailing], 7)
                    }
                }
                .padding(.top, 80)
                HStack {
                    Text("Order Pizza")
                        .font(.title)
                    Spacer()
                    Label {
                        Text(59.99, format: .currency(code: "USD"))
                    }
                    icon: {
                        Image(systemName: orders.isEmpty ? "cart": "cart.circle.fill")
                    }
                }
                .padding()
                .background(.ultraThinMaterial)
            }
            .padding()
            Button("Delete Order") {
                if !orders.isEmpty{ orders.removeLast() }
            }
            .padding(5)
            .background(.regularMaterial, in:Capsule())
            .padding(7)
        }
        .background(Color("Surf"))
    }
}

#Preview {
    OrderView(orders: .constant(testOrders))
}
