//
//  RecentTransactionsView.swift
//  CoopBank
//
//  Created by Ambrose Mbayi on 19/11/2026.
//

import SwiftUI

struct RecentTransactionsView: View {

    let transactions: [Transaction] = [
        Transaction(
            name: "KFC Chicken",
            image: "kfc",
            date: "Nov 27, 2024 12:03 PM",
            amount: 2000.0,
            category: "Food & Beverage"
        ),
        Transaction(
            name: "mitumba",
            image: "naivas",
            date: "Nov 27, 2024 12:02 PM",
            amount: 1500.0,
            category: "Clothing"
        ),
        Transaction(
            name: "Train",
            image: "total",
            date: "Nov 27, 2024 11:57 AM",
            amount: 6000.0,
            category: "Transport & Fuel"
        ),
        Transaction(
            name: "all Fees",
            image: "paul",
            date: "Nov 27, 2024 11:56 AM",
            amount: 500.0,
            category: "Transaction Fees"
        )
    ]

    var onViewAll: () -> Void = {}

    var body: some View {
        VStack(spacing: 14) {

            VStack(spacing: 10) {
                ForEach(transactions) { transaction in
                    TransactionRow(transaction: transaction)
                }
            }
            
            .background(Color.white)
            .overlay {
                RoundedRectangle(cornerRadius: 5)
                    .stroke(Color.gray.opacity(0.15), lineWidth: 0.1)
            }
            
        }
    }
}

#Preview {
    RecentTransactionsView()
        .padding()
        .background(Color.white)
}
