//
//  TransactionRow.swift
//  CoopBank
//
//  Created by Ambrose Mbayi on 19/11/2026.
//

import SwiftUI

struct TransactionRow: View {

    let transaction: Transaction

    var body: some View {
        HStack(spacing: 12) {

            // Merchant Logo
            Image(transaction.image)
                .resizable()
                .scaledToFill()
                .frame(width: 44, height: 44)
                .clipShape(Circle())

            // Merchant Details
            VStack(alignment: .leading, spacing: 5) {

                Text(transaction.name)
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundStyle(.primary)

                Text(transaction.date)
                    .font(.system(size: 12))
                    .foregroundStyle(.secondary)
            }

            Spacer(minLength: 4)

            // Amount and Category
            VStack(alignment: .trailing, spacing: 5) {

                Text("Ksh. \(transaction.amount, specifier: "%.1f")")
                    .font(.system(size: 14, weight: .bold))
                    .foregroundStyle(.red)

                Text(transaction.category)
                    .font(.system(size: 12))
                    .foregroundStyle(.secondary)
                    .lineLimit(1)
                    .minimumScaleFactor(0.8)
            }
        }
        .padding(.horizontal, 14)
        .padding(.vertical, 11)
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .overlay {
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.gray.opacity(0.15), lineWidth: 1)
        }
    }
}
