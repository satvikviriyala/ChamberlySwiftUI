//
//  HeartBurstView.swift
//
//  Created by Satvik Viriyala on 10/05/24.
//

import Foundation
import Combine
import SwiftUI


struct HeartBurstView: View {
    @State private var animate = false
    var body: some View {
        ZStack {
            ForEach(0..<5) { index in
                Image(systemName: "heart.fill")
                    .foregroundColor(.red)
                    .opacity(animate ? 0 : 0.7)
                    .font(.system(size: 20))
                    .offset(x: CGFloat.random(in: -30...30), y: CGFloat.random(in: -50...0))
                    .scaleEffect(animate ? 1.5 : 1)
            }
        }
        .opacity(animate ? 0 : 1)
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                animate = true
            }
        }
    }
}
