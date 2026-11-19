//
//  DashboardView.swift
//  CoopBank
//
//  Created by Ambrose Mbayi on 19/11/2026.
//

import SwiftUI

struct DashboardView : View {
   
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: AppSpacing.large) {
                header
                BalanceCard(balance: "200000")
                
                SpendingSummaryView()
                
                VStack {
                    SectionHeader(title: "Recent Transcations", actionTitle: "View All", action: {})
                    
                    RecentTransactionsView()
                }
                .padding()
                .background(Color.white)
                .overlay {
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.gray.opacity(0.05), lineWidth: 1)
                }
               
            }
            .padding(AppSpacing.medium)
        }
        .background(AppColors.backgroundLight)
        
    }
    
    private var header: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    Image("profile")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 30, height: 30)
                        .clipShape(Circle())
                    
                    
                    Text("Welcome back, Ambrose")
                        .font(AppTypography.body)
                        .fontWeight(.bold)
                        .foregroundStyle(AppColors.backgroundDark)
                }
            }
            
            Spacer()
            
            Image(systemName: "bell.badge")
                .font(.title2)
                .foregroundStyle(AppColors.primary)
        }
    }
    
    private var transactionSection: some View {
        VStack(alignment: .leading, spacing: AppSpacing.medium) {
            SectionHeader(title: "Recent Transactions", actionTitle: "See All", action: {})
           
        }
    }
}


