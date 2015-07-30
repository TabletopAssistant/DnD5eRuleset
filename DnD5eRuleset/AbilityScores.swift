//
//  AbilityScores.swift
//  DnD5eRuleset
//
//  Created by Brentley Jones on 11/22/15.
//  Copyright © 2015 Brentley Jones. All rights reserved.
//

public struct AbilityScores {
    let strength: AbilityScore
    let dexterity: AbilityScore
    let constitution: AbilityScore
    let intelligence: AbilityScore
    let wisdom: AbilityScore
    let charisma: AbilityScore

    public init(strength: AbilityScore, dexterity: AbilityScore, constitution: AbilityScore, intelligence: AbilityScore, wisdom: AbilityScore, charisma: AbilityScore) {
        self.strength = strength
        self.dexterity = dexterity
        self.constitution = constitution
        self.intelligence = intelligence
        self.wisdom = wisdom
        self.charisma = charisma
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

extension AbilityScores: Equatable {
}

public func == (lhs: AbilityScores, rhs: AbilityScores) -> Bool {
    return lhs.strength == rhs.strength
        && lhs.dexterity == rhs.dexterity
        && lhs.constitution == rhs.constitution
        && lhs.intelligence == rhs.intelligence
        && lhs.wisdom == rhs.wisdom
        && lhs.charisma == rhs.charisma
}
