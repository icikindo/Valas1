//
//  ViewModel.swift
//  Valas1
//
//  Created by hastu on 12/11/23.
//

import Foundation
import UIKit

final class ViewModel: ObservableObject {
    @Published var text = ""
    @Published var convertedText = "$0"
    private let converter = Converters()
    
    func convertMoney() {
        self.convertedText = converter.convertEuroToUSD(euro: text)
        self.hideKeyboard()
    }
    
    private func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
