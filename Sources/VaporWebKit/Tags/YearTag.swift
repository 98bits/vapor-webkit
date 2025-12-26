//
//  YearTag.swift
//  vapor-webkit || Swift 6.0 || macOS 26.2
//
//  © 2025 98bits - https://98bits.com
//

import Foundation
import Leaf

public enum YearTagError: Error {
    case invalidFormatParameter
    case tooManyParameters
}

public struct YearTag: LeafTag {
    public init() {}

    public func render(_ ctx: LeafContext) throws -> LeafData {
        let formatter = DateFormatter()
        switch ctx.parameters.count {
        case 0: formatter.dateFormat = "yyyy"
        case 1:
            guard let string = ctx.parameters[0].string else {
                throw YearTagError.invalidFormatParameter
            }

            formatter.dateFormat = string
        default:
            throw YearTagError.tooManyParameters
        }

        let dateAsString = formatter.string(from: Date())
        return LeafData.string(dateAsString)
    }
}
