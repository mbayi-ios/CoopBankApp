//
//  AccountRepository.swift
//  CoopBank
//
//  Created by Ambrose Mbayi on 19/11/2026.
//

import Foundation

protocol AccountRepository {
    func fetchTransactions() async throws -> [Transaction]
    
}
