//
//  SectionHeader.swift
//  CoopBank
//
//  Created by Ambrose Mbayi on 19/11/2026.
//


import SwiftUI
struct SectionHeader: View {
    let title: String
    let actionTitle: String?
    let action: (() -> Void)?
    var body: some View {
        HStack {
            Text(title)
                .font(AppTypography.headline)
                .foregroundStyle(AppColors.backgroundDark)
            
            Spacer()
            
            if let actionTitle, let action {
                HStack {
                    Button(actionTitle, action: action)
                    Image(systemName: "arrow.up.right.square")
                }
                .font(AppTypography.caption)
                .fontWeight(.semibold)
                .foregroundStyle(AppColors.primary)
            }
        }
    }
}

#Preview {
    Group {
        SectionHeader(title: "Recent Transactions", actionTitle:"See All", action: {
            print("See all tapped")
        })
        .padding()
        
        SectionHeader(title: "Recent Transactions", actionTitle:nil, action:nil)
        .padding()
    }
    
}

