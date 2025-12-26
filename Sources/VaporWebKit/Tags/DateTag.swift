//
//  DateTag.swift
//  vapor-webkit || Swift 6.0 || macOS 26.2
//
//  © 2025 98bits - https://98bits.com
//

import Foundation
import Leaf

public enum DateTagError: Error {
    case invalidFormatParameter
    case tooManyParameters
}

public struct DateTag: LeafTag {
    public init() {}

    public func render(_ ctx: LeafContext) throws -> LeafData {
        let formatter = DateFormatter()
        switch ctx.parameters.count {
        case 0: formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        case 1:
            guard let string = ctx.parameters[0].string else {
                throw DateTagError.invalidFormatParameter
            }

            formatter.dateFormat = string
        default:
            throw DateTagError.tooManyParameters
        }

        let dateAsString = formatter.string(from: Date())
        return LeafData.string(dateAsString)
    }
}
