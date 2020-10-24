//
//  UIScreen+ScreenCorners.swift
//
//
//  Created by Kyle Bashour on 10/24/20.
//

import UIKit

extension UIScreen {
    /// The corner radius of the display. Uses a private property of `UIScreen`,
    /// and may report 0 if the API changes.
    public var displayCornerRadius: CGFloat {
        let base64Selector = "X2Rpc3BsYXlDb3JuZXJSYWRpdXM="

        guard let data = Data(base64Encoded: base64Selector),
              let selector = String(data: data, encoding: .utf8),
              let cornerRadius = self.value(forKey: selector) as? CGFloat
        else {
            return 0
        }

        return cornerRadius
    }
}
