//
//  RatingsView.swift
//  HuliPizza
//
//  Created by Mateo Mercado Maguiña on 16/1/24.
//

import SwiftUI

struct RatingsView: View {
    var rating:Int
    var body: some View {
        HStack {
            ForEach(1...6,id:\.self){ circle in
                Image (systemName: (circle <= rating) ?
                       "fork.knife.circle.fill" : "circle")
            }
        }
    }
}

#Preview {
    RatingsView(rating: 4)
}
