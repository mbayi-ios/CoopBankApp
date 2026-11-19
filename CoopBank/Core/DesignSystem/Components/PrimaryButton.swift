//
//  PrimaryButton.swift
//  CoopBank
//
//  Created by Ambrose Mbayi on 19/11/2026.
//

import SwiftUI

struct PrimaryButton : View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(AppTypography.headline)
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity)
                .padding(.vertical, AppSpacing.medium)
                .background(AppColors.primary)
                .clipShape(
                    RoundedRectangle(cornerRadius: 10)
                )
        }
        .buttonStyle(.plain)
        
    }
}

#Preview {
    PrimaryButton(title: "Primary Button") {
        print("button clicked")
    }
        
}
