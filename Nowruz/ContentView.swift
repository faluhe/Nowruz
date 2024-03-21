//
//  ContentView.swift
//  Nowruz
//
//  Created by Ismailov Farrukh on 21/03/24.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        ZStack {
            VStack {
                Image("nowruz")
                    .resizable()
                    .frame(width: 220, height: 180)
                    .shadow(color: .black, radius: 10)

                    .overlay(
                        WheatView()
                            .padding(.bottom, 95)
                        ,alignment: .bottom
                    )

                ShimmerEffect(title: "Happy Nowruz")
            }
            ParticleEmitterView()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.init(uiColor: .systemPurple).opacity(0.2))
    }
}









#Preview {
    ContentView()
}
