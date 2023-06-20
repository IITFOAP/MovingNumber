//
//  ContentView.swift
//  MovingNumber
//
//  Created by Рома Баранов on 19.06.2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var manager = AppManager()
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Подвинь слайдер, как можно ближе к: \(lround(manager.data.targetValue))")
            SliderCheckView()
        }
        .padding()
        .environmentObject(manager)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

