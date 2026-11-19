//
//  Color.swift
//  CoopBank
//
//  Created by Ambrose Mbayi on 19/11/2026.
//

import SwiftUI

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(
            in: CharacterSet.alphanumerics.inverted
        )

        let value = UInt64(hex, radix: 16) ?? 0

        let red = Double((value >> 16) & 0xFF) / 255
        let green = Double((value >> 8) & 0xFF) / 255
        let blue = Double(value & 0xFF) / 255

        self.init(
            .sRGB,
            red: red,
            green: green,
            blue: blue,
            opacity: 1
        )
    }
}
