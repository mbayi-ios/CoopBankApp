//
//  Placeholder.swift
//  CoopBank
//
//  Created by Ambrose Mbayi on 19/11/2026.
//


import SwiftUI

struct PlaceholderView: View {
    let title: String
    let icon: String
    
    var body: some View {
        VStack(spacing: AppSpacing.medium)
        {
            Image(systemName: icon)
                .font(.system(size: 40))
                .foregroundStyle(AppColors.primary)
            
            Text(title)
                .font(AppTypography.title)
            
            Text("Coming Soon")
                .font(AppTypography.body)
                .foregroundStyle(AppColors.secondary)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(AppColors.backgroundLight)
    }
}
