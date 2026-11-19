//
//  MainTab.swift
//  CoopBank
//
//  Created by Ambrose Mbayi on 19/11/2026.
//

import SwiftUI

enum AppTab: Hashable {
    case home
    case budgets
    case add
    case reports
    case account
}

struct MainTabView : View {
    @State private var selectedTab: AppTab = .home

    
    var body: some View {
        TabView(selection: $selectedTab) {
            NavigationStack {
                DashboardView()
            }
            .tabItem {
                Label("Home", systemImage: "house")
            }
            .tag(AppTab.home)
            
            NavigationStack {
                PlaceholderView(title: "Budget", icon: "rectangle.grid.2x2")
            }
            .tabItem {
                Label("Budget", systemImage: "rectangle.grid.2x2")
            }
            .tag(AppTab.budgets)
            
            NavigationStack {
                AddBudgetView()
            }
            .tabItem {
                Label {
                    Text("")
                } icon: {
                    if let image = UIImage(named: "add_button") {
                        Image(uiImage: image
                            .resized(to: CGSize(width: 50, height: 50))
                            .withRenderingMode(.alwaysOriginal)
                        )
                    }
                }
            }
            .tag(AppTab.add)
            
            NavigationStack {
                PlaceholderView(title: "Report", icon: "chart.line.text.clipboard")
            }
            .tabItem {
                Label("Report", systemImage: "chart.line.text.clipboard")
            }
            .tag(AppTab.reports)
            
            NavigationStack {
                PlaceholderView(title: "Account", icon: "person")
            }
            .tabItem {
                Label("Account", systemImage: "person")
            }
            .tag(AppTab.account)
        }
        .tint(AppColors.primary)
    }
}
