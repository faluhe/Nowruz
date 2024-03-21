//
//  ShimmerEffect.swift
//  Nowruz
//
//  Created by Ismailov Farrukh on 21/03/24.
//

import SwiftUI

struct ShimmerEffect: View {
    var title: String
    @State var animating = false

    var body: some View {
        ZStack {
            Text(title)
                .foregroundStyle(.red)
                .font(.system(size: 40)).fontWeight(.semibold)
            HStack(spacing: 0) {
                ForEach(0..<title.count, id: \.self) { index in
                    Text(String(title[title.index(title.startIndex, offsetBy: index)]))
                        .font(.system(size: 40)).fontWeight(.semibold)
                        .foregroundStyle(
                            LinearGradient(
                                gradient: Gradient(colors: [
                                    .purple, .pink
                                ]),
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                }
            }
            .mask {
                Rectangle()
                    .rotationEffect(.init(degrees: 50))
                    .offset(x: -150)
                    .offset(x: animating ? 500 : 0)

            }
            .onAppear {
                withAnimation(Animation.linear(duration: 1.5).repeatForever(autoreverses: false)) {
                    animating.toggle()
                }
            }
        }
    }
}
