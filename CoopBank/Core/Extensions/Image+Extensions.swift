//
//  Image+Extensions.swift
//  CoopBank
//
//  Created by Ambrose Mbayi on 19/11/2026.
//
import Foundation
import SwiftUI

extension UIImage {
    func resized(to size: CGSize) -> UIImage {
        let renderer = UIGraphicsImageRenderer(size: size)

        return renderer.image { _ in
            self.draw(in: CGRect(origin: .zero, size: size))
        }
    }
}
