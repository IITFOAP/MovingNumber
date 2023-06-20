//
//  SliderCheckView.swift
//  MovingNumber
//
//  Created by Рома Баранов on 19.06.2023.
//

import SwiftUI

struct SliderCheckView: View {
    @EnvironmentObject private var manager: AppManager

    var body: some View {
        VStack(spacing: 20) {
            HStack() {
                Text("0")
                SliderView(
                    currentValue: $manager.data.currentValue,
                    targetValue: $manager.data.targetValue
                )
                Text("100")
            }
            Button("Проверь меня!") {
                manager.toggleAlert()
            }
            .alert("Ваш счет", isPresented: $manager.showAlert, actions: {}) {
                Text("\(manager.computeScore().formatted())")
            }
            Button("Начать заново") {
                manager.getRandomValue()
            }
        }
    }
}

