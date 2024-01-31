//
//  HeaderView.swift
//  HuliPizza
//
//  Created by Mateo Mercado Maguiña on 16/1/24.
//

import SwiftUI

struct HeaderView: View {
    @EnvironmentObject var orders:OrderModel
    @Environment(\.verticalSizeClass) var vSizeClass:UserInterfaceSizeClass? //changes the layout when phone in horizontal
    var body: some View {
        VStack {
            if (vSizeClass ?? .regular) != .compact {
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
            } else {
                HStack(alignment: .bottom) {
                    Image("surfBanner")
                        .resizable()
                        .scaledToFit()
                    Text("Huli Pizza Company")
                        .font(.custom("Georgia", size: 30, relativeTo: .title))
                        .foregroundColor(Color("Surf"))
                        .fontWeight(.heavy)
                }
            }
        }
        .background(.ultraThinMaterial)
    }
}

#Preview {
    HeaderView().environmentObject(OrderModel())
}
