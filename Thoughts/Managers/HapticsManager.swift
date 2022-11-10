//
//  HapticsManager.swift
//  Thoughts
//
//  Created by Himanshu Singh Malik on 7/11/22.
//

import Foundation
import UIKit

class HapticsManager {
    static let shared = HapticsManager()

    private init() {}

    func vibrateForSelection() {
        let generator = UISelectionFeedbackGenerator()
        generator.prepare()
        generator.selectionChanged()
    }

    func vibrate(for type: UINotificationFeedbackGenerator.FeedbackType) {
        let generator = UINotificationFeedbackGenerator()
        generator.prepare()
        generator.notificationOccurred(type)
    }
}
