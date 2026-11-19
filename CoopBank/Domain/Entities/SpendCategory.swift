//
//  SpendCategory.swift
//  CoopBank
//
//  Created by Ambrose Mbayi on 19/11/2026.
//

import Foundation
import SwiftUI

struct SpendCategory: Identifiable {
    let id = UUID()
    let name: String
    let amount: Double
    let color: Color
}
