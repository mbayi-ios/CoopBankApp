//
//  Transcation.swift
//  CoopBank
//
//  Created by Ambrose Mbayi on 19/11/2026.
//

import Foundation
struct Transaction: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let date: String
    let amount: Double
    let category: String
}
