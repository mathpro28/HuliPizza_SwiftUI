//
//  MenuItemView.swift
//  HuliPizza
//
//  Created by Mateo Mercado Maguiña on 16/1/24.
//

import SwiftUI

struct MenuItemView: View {
    @State private var addedItem:Bool = false
    @Binding var item:MenuItem
    var body: some View {
        VStack {
            HStack {
                Text(item.name)
                    .font(.title)
                    .fontWeight(.semibold)
                //                    .foregroundColor(Color("Surf"))
                    .foregroundStyle(.ultraThickMaterial)
                    .padding(.leading)
                if let image = UIImage(named: "\(item.id)_lg") {
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                        .padding([.top, .bottom], 5)
                        .cornerRadius(15)
                } else {
                    Image("surfboard_sm")
                        .resizable()
                        .scaledToFit()
                        .rotationEffect(.degrees(180))
                }
                
            }
            .background(.linearGradient(colors: [Color("Surf"), Color("Sky").opacity(0.1)], startPoint: .leading, endPoint: .trailing), in: Capsule())
            .shadow(color: .teal, radius: 5, x:8, y:8)
            
            VStack(alignment: .leading) {
                ScrollView {
                    Text(item.description)
                        .font(.custom("Georgia", size: 18, relativeTo: .body))
                }
            }
            Button {
                addedItem = true
            } label: {
                Spacer()
                Text(12.99, format: .currency(code: "USD")).bold()
                Image(systemName: addedItem ? "cart.fill.badge.plus" : "cart.badge.plus")
                Spacer()
            }
            .padding()
            .background(.red, in:Capsule())
            .foregroundStyle(.white)
            .padding(5)
        }
    }
}

#Preview {
    MenuItemView(item: .constant(testMenuItem))
}
