////
////  BalanceCard.swift
////  CoopBank
////
////  Created by Ambrose Mbayi on 19/11/2026.
////
//
//
import SwiftUI

struct BalanceCard: View {
    
    let balance: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: AppSpacing.small) {
            VStack(alignment: .leading, spacing: AppSpacing.small) {
                    HStack {
                        Text(balance)
                            .font(AppTypography.largeTitle)
                            .fontWeight(.black)
                            .foregroundStyle(.white)
                        
                        Text("Ksh.")
                            .fontWeight(.black)
                            .font(AppTypography.caption)
                            .foregroundStyle(.white)
                    }
                    
                    Text("remaining on your monthly budget")
                        .font(AppTypography.body)
                        .foregroundStyle(.white)
                }
        }
        .frame(maxWidth: .infinity)
        .padding(AppSpacing.large)
        .background(
            LinearGradient(
                colors: [
                    AppColors.primary,
                    AppColors.backgroundDark.opacity(0.7)
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        )
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    BalanceCard(balance: "2000,000.00")
}


