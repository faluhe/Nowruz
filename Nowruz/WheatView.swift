//
//  WheatView.swift
//  Nowruz
//
//  Created by Ismailov Farrukh on 21/03/24.
//

import SwiftUI

struct WheatView: View {

    @State private var animationToggle = false

    @State private var customShadow = false
    var body: some View {
        VStack {
            ZStack {

                Image("wheat")
                    .resizable()
                    .frame(width: 200, height: 180, alignment: .top)

                Image("wheat")
                    .resizable()
                    .frame(width: 180, height: 180, alignment: .top)
                    .rotationEffect(.degrees(animationToggle ? -8 : -5), anchor: .bottom)


                    .onAppear {
                        withAnimation(Animation.linear(duration: 1.4).repeatForever(autoreverses: true)) {
                            animationToggle.toggle()
                        }
                    }
            }
        }
    }
}
