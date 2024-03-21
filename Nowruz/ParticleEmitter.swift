//
//  ParticleEmitter.swift
//  Nowruz
//
//  Created by Ismailov Farrukh on 21/03/24.
//

import SwiftUI

struct ParticleEmitterView: UIViewRepresentable {

    func makeUIView(context: Context) -> UIView {
        let uiView = UIViewType()
        ParticleEmitter.setupParticles(in: uiView)
        return uiView
    }
    func updateUIView(_ uiView: UIViewType, context: Context) {

    }
}

struct ParticleEmitter {

    static func setupParticles(in view: UIView) {
        let particleEmitter = CAEmitterLayer()

        particleEmitter.emitterPosition = CGPoint(x: -100, y: -100)
        particleEmitter.emitterSize = CGSize(width: 400, height: 400)
        particleEmitter.emitterMode = .surface
        particleEmitter.renderMode = .additive

        let flower = CAEmitterCell()

        flower.contents = UIImage(named: "flower")?.cgImage
        flower.birthRate = 20
        flower.lifetime = 30
        flower.velocity = 60
        flower.scale = 0.001
        flower.velocityRange = 150
        flower.scaleRange = 0.001
        flower.spin = -28 * (.pi / 50)
        flower.spinRange = 57.2 * (.pi / 180.0)
        flower.yAcceleration = 40
        flower.xAcceleration = 5
        flower.color = UIColor(white: 1, alpha: 1).cgColor



        particleEmitter.emitterCells = [flower]
        view.layer.addSublayer(particleEmitter)
    }
}
