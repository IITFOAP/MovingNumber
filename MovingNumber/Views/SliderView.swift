//
//  SliderView.swift
//  MovingNumber
//
//  Created by Рома Баранов on 21.06.2023.
//

import SwiftUI

struct SliderView: View {
    @Binding var currentValue: Double
    @Binding var targetValue: Double
    
    var body: some View {
        UISliderRepresentation()
    }
}


