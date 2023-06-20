//
//  AppManger.swift
//  MovingNumber
//
//  Created by Рома Баранов on 20.06.2023.
//

import Combine

final class AppManager: ObservableObject {
    @Published var data = DataProvider()
    var showAlert = false
    
    func getRandomValue() {
        data.targetValue = Double.random(in: 0...100)
    }

    func toggleAlert() {
        showAlert.toggle()
        objectWillChange.send()
    }
    
    func computeScore() -> Int {
        let difference = abs(data.targetValue - data.currentValue)
        return Int(100 - difference)
    }
}


