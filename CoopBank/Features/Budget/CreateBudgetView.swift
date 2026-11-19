//
//  CreateBudgetView.swift
//  CoopBank
//
//  Created by Ambrose Mbayi on 19/11/2026.
//



import SwiftUI

struct AddBudgetView: View {

    @State private var selectedCategory = "Food & Beverage"
    @State private var itemName = "KFC Chicken"
    @State private var allocation = "5000"

    private let categories = [
        "Food & Beverage",
        "Transport & Fuel",
        "Clothing",
        "Transaction Fees",
        "Entertainment",
        "Other"
    ]

    var onCreate: (String, String, Decimal) -> Void = { _, _, _ in }

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 22) {

                Text("Add New Budget Item")
                    .font(.system(size: 17, weight: .bold))
                    .foregroundStyle(.primary)

                VStack(alignment: .leading, spacing: 9) {
                    fieldLabel("Category")

                    Menu {
                        ForEach(categories, id: \.self) { category in
                            Button(category) {
                                selectedCategory = category
                            }
                        }
                    } label: {
                        HStack {
                            Text(selectedCategory)
                                .font(.system(size: 14))
                                .foregroundStyle(.primary)

                            Spacer()

                            Image(systemName: "chevron.down")
                                .font(.system(size: 12, weight: .semibold))
                                .foregroundStyle(.primary)
                        }
                        .padding(.horizontal, 12)
                        .frame(height: 44)
                        .background(Color.white)
                        .overlay {
                            RoundedRectangle(cornerRadius: 7)
                                .stroke(Color.gray.opacity(0.8), lineWidth: 1)
                        }
                    }
                }

                VStack(alignment: .leading, spacing: 9) {
                    fieldLabel("Item Name")

                    TextField("Enter item name", text: $itemName)
                        .font(.system(size: 14))
                        .padding(.horizontal, 12)
                        .frame(height: 44)
                        .background(Color.white)
                        .overlay {
                            RoundedRectangle(cornerRadius: 7)
                                .stroke(Color.gray.opacity(0.8), lineWidth: 1)
                        }
                }

                VStack(alignment: .leading, spacing: 9) {
                    fieldLabel("Allocation")

                    HStack(spacing: 10) {

                        Text("KSh")
                            .font(.system(size: 12))
                            .foregroundStyle(.secondary)

                        Image(systemName: "chevron.down")
                            .font(.system(size: 9))
                            .foregroundStyle(.secondary)

                        Rectangle()
                            .fill(Color.gray.opacity(0.4))
                            .frame(width: 1, height: 20)

                        TextField("0", text: $allocation)
                            .keyboardType(.decimalPad)
                            .font(.system(size: 14))
                    }
                    .padding(.horizontal, 12)
                    .frame(height: 44)
                    .background(Color.white)
                    .overlay {
                        RoundedRectangle(cornerRadius: 7)
                            .stroke(AppColors.primary, lineWidth: 1.5)
                    }
                }

                Button {
                    guard !itemName.trimmingCharacters(in: .whitespaces).isEmpty,
                          let amount = Decimal(string: allocation),
                          amount > 0 else {
                        return
                    }

                    onCreate(selectedCategory, itemName, amount)

                } label: {
                    Text("Create New Budget Item")
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 44)
                        .background(AppColors.primary)
                        .clipShape(RoundedRectangle(cornerRadius: 7))
                }
                .padding(.top, 10)
            }
            .padding(16)
        }
        .background(Color.white)
        .navigationTitle("Add Budget")
        .navigationBarTitleDisplayMode(.inline)
    }


    private func fieldLabel(_ title: String) -> some View {
        Text(title)
            .font(.system(size: 12, weight: .medium))
            .foregroundStyle(.primary)
    }
}

#Preview {
    NavigationStack {
        AddBudgetView()
    }
}
