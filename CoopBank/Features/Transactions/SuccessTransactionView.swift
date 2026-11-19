//
//  SuccessTransactionView.swift
//  CoopBank
//
//  Created by Ambrose Mbayi on 19/11/2026.
//

import SwiftUI

struct BudgetSuccessView: View {

    let itemName: String
    let amount: Decimal
    let date: Date

    var onGoHome: () -> Void = {}
    var onRateExperience: () -> Void = {}

    private var formattedAmount: String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.maximumFractionDigits = 2
        formatter.minimumFractionDigits = 0

        return formatter.string(
            from: amount as NSDecimalNumber
        ) ?? "0"
    }

    private var formattedDate: String {
        date.formatted(
            .dateTime
                .day()
                .month(.wide)
                .year()
        )
    }

    var body: some View {
        VStack(spacing: 0) {

            Spacer()
                .frame(height: 30)

            ZStack {
               // ConfettiView()

                Circle()
                    .fill(Color.green)
                    .frame(width: 46, height: 46)
                    .shadow(
                        color: .green.opacity(0.2),
                        radius: 8
                    )

                Image(systemName: "checkmark")
                    .font(.system(size: 28, weight: .bold))
                    .foregroundStyle(.white)
            }
            .frame(height: 100)

        
            VStack(spacing: 5) {
                Text("Budget Item Added")
                    .font(.system(size: 18, weight: .bold))
                    .foregroundStyle(AppColors.secondary)

                Text("Budget item has been added successfully.")
                    .font(.system(size: 12))
                    .foregroundStyle(.secondary)
                    .multilineTextAlignment(.center)
            }
            .padding(.top, 12)

            Rectangle()
                .fill(Color.gray.opacity(0.25))
                .frame(height: 1)
                .padding(.vertical, 28)

            VStack(spacing: 12) {

                detailRow(
                    title: "Budget Item Name",
                    value: itemName
                )

                detailRow(
                    title: "Amount",
                    value: "Ksh \(formattedAmount)",
                    valueColor: AppColors.primary,
                    bold: true
                )

                detailRow(
                    title: "Date",
                    value: formattedDate
                )
            }

            Spacer(minLength: 40)

            VStack(spacing: 8) {

                Button(action: onGoHome) {
                    Text("Go back to Home")
                        .font(.system(size: 13, weight: .semibold))
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 48)
                        .background(AppColors.secondary)
                        .clipShape(RoundedRectangle(cornerRadius: 7))
                }

                Button(action: onRateExperience) {
                    Text("Rate your Experience")
                        .font(.system(size: 13, weight: .semibold))
                        .foregroundStyle(AppColors.secondary)
                        .frame(maxWidth: .infinity)
                        .frame(height: 48)
                        .background(Color.white)
                        .overlay {
                            RoundedRectangle(cornerRadius: 7)
                                .stroke(
                                    AppColors.secondary.opacity(0.5),
                                    lineWidth: 1
                                )
                        }
                }
            }
        }
        .padding(.horizontal, 18)
        .padding(.bottom, 20)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
        .navigationBarBackButtonHidden()
    }

    private func detailRow(
        title: String,
        value: String,
        valueColor: Color = .primary,
        bold: Bool = false
    ) -> some View {
        HStack {
            Text(title)
                .font(.system(size: 11))
                .foregroundStyle(.secondary)

            Spacer()

            Text(value)
                .font(.system(
                    size: 11,
                    weight: bold ? .bold : .medium
                ))
                .foregroundStyle(valueColor)
        }
    }
}

#Preview {
    NavigationStack {
        BudgetSuccessView(
            itemName: "KFC Chicken",
            amount: 2000,
            date: .now
        )
    }
}
