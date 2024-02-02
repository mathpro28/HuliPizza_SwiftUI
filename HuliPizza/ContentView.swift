//
//  ContentView.swift
//  HuliPizza
//
//  Created by Mateo Mercado Maguiña on 15/1/24.
//

import SwiftUI

struct ContentView: View {
    var menu:[MenuItem]
    @StateObject var orders:OrderModel = OrderModel()
    @State private var showOrders:Bool = false
    @State private var selectedItem:MenuItem = noMenuItem
    @State private var presentGrid:Bool = false
    var body: some View {
        VStack {
            HeaderView()
                .shadow(radius: 5)
                .environment(\.colorScheme, .light) //the text keeps light even when dark mode on
            StatusBarView(showOrders: $showOrders, presentGrid: $presentGrid)
            if showOrders {
                OrderView(orders: orders)
                    .cornerRadius(10)
            } else {
                MenuItemView(item: $selectedItem, orders: orders)
                    .padding(5)
                    .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 10))
                if presentGrid {
                    MenuGridView(menu: menu, selectedItem: $selectedItem)
                } else {
                    MenuView(menu:menu, selectedItem: $selectedItem)
                }
            }
            Spacer()
            
            
        }
        .padding()
        .background(.linearGradient(colors: [.cyan, Color("Surf"), Color("Sky"), .white], startPoint: .topLeading, endPoint: .bottom))
        .environmentObject(orders)
    }
}

#Preview {
    ContentView(menu:MenuModel().menu)
 }
