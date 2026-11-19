//
//  Get.swift
//  CoopBank
//
//  Created by Ambrose Mbayi on 19/11/2026.
//

import Foundation

struct GetTransactionUseCase {
    private let repository: AccountRepository
    
    init(repository: AccountRepository) {
        self.repository = repository
    }
    
    func execute() async throws -> [Transaction] {
        try await repository.fetchTransactions()
    }
}
