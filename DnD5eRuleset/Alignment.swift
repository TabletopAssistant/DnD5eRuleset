//
//  Alignment.swift
//  DnD5eRuleset
//
//  Created by Brentley Jones on 7/31/15.
//  Copyright © 2015 Brentley Jones. All rights reserved.
//

/// Represents a single alignment.
public enum Alignment: Int {
    case LawfulGood = 0x1
    case NeutralGood = 0x10
    case ChaoticGood = 0x100
    case LawfulNeutral = 0x1000
    case Neutral = 0x10000
    case ChaoticNeutral = 0x100000
    case LawfulEvil = 0x1000000
    case NeutralEvil = 0x10000000
    case ChaoticEvil = 0x100000000
}

extension Alignment: CustomStringConvertible {
    public var description: String {
        switch self {
        case .LawfulGood:
            return "LG"
        case NeutralGood:
            return "NG"
        case ChaoticGood:
            return "CG"
        case LawfulNeutral:
            return "LN"
        case Neutral:
            return "N"
        case ChaoticNeutral:
            return "CN"
        case LawfulEvil:
            return "LE"
        case NeutralEvil:
            return "NE"
        case ChaoticEvil:
            return "CE"
        }
    }
}

/// Represents ranges of `Alignment`s. Useful for describing criteria, like "Can only be used by `.AnyEvil`" creatures.
public struct Alignments: OptionSetType {
    static let Unaligned: Alignments = []
    
    static let LawfulGood = Alignments(.LawfulGood)
    static let NeutralGood = Alignments(.NeutralGood)
    static let ChaoticGood = Alignments(.ChaoticGood)
    static let LawfulNeutral = Alignments(.LawfulNeutral)
    static let Neutral = Alignments(.Neutral)
    static let ChaoticNeutral = Alignments(.ChaoticNeutral)
    static let LawfulEvil = Alignments(.LawfulEvil)
    static let NeutralEvil = Alignments(.NeutralEvil)
    static let ChaoticEvil = Alignments(.ChaoticEvil)
    
    static let AnyLawful: Alignments = [.LawfulGood, .LawfulNeutral, .LawfulEvil]
    static let AnyChaotic: Alignments = [.ChaoticGood, .ChaoticNeutral, .ChaoticEvil]
    static let AnyGood: Alignments = [.LawfulGood, .NeutralGood, .ChaoticGood]
    static let AnyEvil: Alignments = [.LawfulEvil, .NeutralEvil, .ChaoticEvil]
    static let AnyNeutral: Alignments = [.NeutralGood, LawfulNeutral, Neutral, ChaoticNeutral, NeutralEvil]
    
    public let rawValue : Int
    
    public init(rawValue: Int) {
        self.rawValue = rawValue
    }
    
    public init(_ alignment: Alignment) {
        self.rawValue = alignment.rawValue
    }
    
    // TODO: Description ("NE")
}
