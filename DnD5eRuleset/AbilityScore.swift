//
//  AbilityScore.swift
//  DnD5eRuleset
//
//  Created by Brentley Jones on 7/29/15.
//  Copyright © 2015 Brentley Jones. All rights reserved.
//

public struct AbilityScore {
    public typealias Score = Int
    public typealias Modifier = Int
    
    public let score: Score
    
    public var modifier: Modifier {
        // We need to do floor instead of truncation
        return Int(floor((Double(score) - 10.0)/2.0))
    }
    
    public init(_ score: Score) {
        self.score = score
    }
}

// MARK: - IntegerLiteralConvertible

extension AbilityScore: IntegerLiteralConvertible {
    public init(integerLiteral value: Score) {
        self.init(value)
    }
}

// MARK: - Equatable

extension AbilityScore: Equatable {
}

public func == (lhs: AbilityScore, rhs: AbilityScore) -> Bool {
    return lhs.score == rhs.score
}

// MARK: - Comparable

extension AbilityScore: Comparable {
}

public func < (lhs: AbilityScore, rhs: AbilityScore) -> Bool {
    return lhs.score < rhs.score
}
