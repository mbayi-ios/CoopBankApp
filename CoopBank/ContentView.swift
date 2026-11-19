//
//  ContentView.swift
//  CoopBank
//
//  Created by Ambrose Mbayi on 19/11/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello CoopBank App")
                .background(AppColors.primary)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
