//
//  ContentView.swift
//  HuliPizza
//
//  Created by Mateo Mercado Maguiña on 15/1/24.
//

import SwiftUI

struct ContentView: View {
    var orders:[Int] = [1,2,3,4]
    var body: some View {
        VStack {
            HeaderView()
            OrderView(orders: orders)
            MenuItemView()
            MenuView()
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
 }
