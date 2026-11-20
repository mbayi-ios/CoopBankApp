//
//  CoopBankApp.swift
//  CoopBank
//
//  Created by Ambrose Mbayi on 19/11/2026.
//

import SwiftUI


import SwiftUI

@main
struct CoopBankApp: App {

    @State private var isLoading = true

    var body: some Scene {
        WindowGroup {
            Group {
                if isLoading {
                    SplashScreen()
                } else {
                    MainTabView()
                }
            }
            .task {
                // Perform app initialization here
                try? await Task.sleep(for: .seconds(2))

                withAnimation {
                    isLoading = false
                }
            }
        }
    }
}



import SwiftUI

struct SplashScreen: View {

    var body: some View {
        ZStack {
            Color("Brand")
                .ignoresSafeArea()

            VStack(spacing: 16) {

                Spacer()

                Image("app_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 110, height: 110)

                
                Text("CoopBank")
                    .font(.system(size: 28, weight: .bold))
                    .foregroundStyle(AppColors.backgroundLight)

                Text("Banking made simpler.")
                    .font(.system(size: 14, weight: .medium))
                    .foregroundStyle(.white)

                Spacer()

                ProgressView()
                    .tint(AppColors.primary)
                    .padding(.bottom, 12)

            }
        }
    }
}

#Preview {
    SplashScreen()
}
