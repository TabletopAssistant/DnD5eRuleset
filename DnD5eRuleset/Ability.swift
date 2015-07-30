//
//  Ability.swift
//  DnD5eRuleset
//
//  Created by Brentley Jones on 7/29/15.
//  Copyright © 2015 DnD5eRuleset. All rights reserved.
//

import Foundation

public enum Ability {
    case Strength
    case Dexterity
    case Constitution
    case Intelligence
    case Wisdom
    case Charisma
}

public struct AbilityScore: Equatable {
    
    public typealias Score = Int
    public typealias Modifier = Int
    
    public let score: Score
    
    public var modifier: Modifier {
        return (score - 10)/2
    }
    
    public init(_ score: Score) {
        self.score = score
    }
    
}

public func == (lhs: AbilityScore, rhs: AbilityScore) -> Bool {
    return lhs.score == rhs.score
}

public struct AbilityScores: Equatable {
    
    let strength: AbilityScore
    let dexterity: AbilityScore
    let constitution: AbilityScore
    let intelligence: AbilityScore
    let wisdom: AbilityScore
    let charisma: AbilityScore
    
    public init(strength: Int, dexterity: Int, constitution: Int, intelligence: Int, wisdom: Int, charisma: Int) {
        self.strength = AbilityScore(strength)
        self.dexterity = AbilityScore(dexterity)
        self.constitution = AbilityScore(constitution)
        self.intelligence = AbilityScore(intelligence)
        self.wisdom = AbilityScore(wisdom)
        self.charisma = AbilityScore(charisma)
    }
    
    public subscript(ability: Ability) -> AbilityScore {
        return score(ability)
    }
    
    public func score(ability: Ability) -> AbilityScore {
        switch ability {
        case .Strength:
            return strength
        case .Dexterity:
            return dexterity
        case .Constitution:
            return constitution
        case .Intelligence:
            return intelligence
        case .Wisdom:
            return wisdom
        case .Charisma:
            return charisma
        }
    }
    
}

// MARK: - Equatable

public func == (lhs: AbilityScores, rhs: AbilityScores) -> Bool {
    return lhs.strength == rhs.strength
        && lhs.dexterity == rhs.dexterity
        && lhs.constitution == rhs.constitution
        && lhs.intelligence == rhs.intelligence
        && lhs.wisdom == rhs.wisdom
        && lhs.charisma == rhs.charisma
}
