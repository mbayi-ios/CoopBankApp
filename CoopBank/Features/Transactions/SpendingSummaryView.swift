
import SwiftUI

struct SpendingSummaryView: View {

    @State private var selectedMonth = "November"

    private let categories: [SpendCategory] = [
        SpendCategory(
            name: "Food & Beverage",
            amount: 0.0,
            color: Color(red: 0.0, green: 0.23, blue: 0.33)
        ),
        SpendCategory(
            name: "Transport & Fuel",
            amount: 0.0,
            color: Color(red: 0.50, green: 0.73, blue: 0.15)
        ),
        SpendCategory(
            name: "Clothing",
            amount: 0.0,
            color: Color(red: 0.27, green: 0.78, blue: 0.87)
        ),
        SpendCategory(
            name: "Transaction Fees",
            amount: 0.0,
            color: Color(red: 1.0, green: 0.43, blue: 0.27)
        )
    ]

    private let months = Calendar.current.monthSymbols

    var body: some View {
        VStack(spacing: 0) {

            HStack(alignment: .center) {

                VStack(alignment: .leading, spacing: 4) {
                    Text("Total Spend this Month")
                        .font(.system(size: 15, weight: .medium))
                        .foregroundStyle(.gray)

                    Text("Ksh 0.0")
                        .font(.system(size: 18, weight: .bold))
                        .foregroundStyle(.black)
                }

                Spacer()

                Menu {
                    ForEach(months, id: \.self) { month in
                        Button(month) {
                            selectedMonth = month
                        }
                    }
                } label: {
                    HStack(spacing: 8) {
                        Text(selectedMonth)
                            .font(.system(size: 14))
                            .foregroundStyle(.gray)

                        Image(systemName: "chevron.down")
                            .font(.system(size: 12, weight: .semibold))
                            .foregroundStyle(.gray)
                    }
                    .padding(.horizontal, 10)
                    .padding(.vertical, 9)
                    .background(Color.white)
                    .overlay {
                        RoundedRectangle(cornerRadius: 11)
                            .stroke(Color.gray.opacity(0.6), lineWidth: 1.5)
                    }
                }
            }

            Spacer(minLength: 70)

            // Spending Categories
            VStack(spacing: 12) {
                ForEach(categories) { category in
                    HStack(spacing: 12) {

                        Circle()
                            .fill(category.color)
                            .frame(width: 16, height: 16)

                        Text(category.name)
                            .font(.system(size: 14, weight: .medium))
                            .foregroundStyle(.black)

                        Spacer()

                        Text("Ksh. \(String(format: "%.1f", category.amount))")
                            .font(.system(size: 14))
                            .foregroundStyle(.black)
                    }
                }
            }
        }
        .padding(.horizontal, 24)
        .padding(.vertical, 24)
        .frame(maxWidth: .infinity)
        .background(Color.white)
    }
}




#Preview {
    SpendingSummaryView()
}

