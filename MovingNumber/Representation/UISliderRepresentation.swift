//
//  UISliderRepresentation.swift
//  MovingNumber
//
//  Created by Рома Баранов on 19.06.2023.
//

import SwiftUI

struct UISliderRepresentation: UIViewRepresentable {
    @EnvironmentObject private var manager: AppManager

    func makeUIView(context: Context) -> UISlider {
        let slider = UISlider()
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.addTarget(
            context.coordinator,
            action: #selector(Coordinator.sliderValueChanged),
            for: .valueChanged
        )
        
        return slider
    }
    
    func updateUIView(_ uiView: UISlider, context: Context) {
        uiView.value = Float(manager.data.currentValue)
        uiView.thumbTintColor = UIColor
            .red
            .withAlphaComponent(CGFloat(manager.computeScore()) / 100)
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(currentValue: $manager.data.currentValue)
    }
}

extension UISliderRepresentation {
    class Coordinator: NSObject {
        @Binding var currentValue: Double

        init(currentValue: Binding<Double>) {
            self._currentValue = currentValue
        }

        @objc func sliderValueChanged(_ sender: UISlider) {
            currentValue = Double(sender.value)
        }
    }
}

