//
//  Skill.swift
//  DnD5eRuleset
//
//  Created by Brentley Jones on 7/30/15.
//  Copyright © 2015 Brentley Jones. All rights reserved.
//

public enum Skill {
    case Acrobatics
    case AnimalHandling
    case Arcana
    case Athletics
    case Deception
    case History
    case Insight
    case Intimidation
    case Investigation
    case Medicine
    case Nature
    case Perception
    case Performance
    case Persuasion
    case Religion
    case SleightOfHand
    case Stealth
    case Survival

    public var baseAbility: Ability {
        switch self {
        case Acrobatics:
            return .Dexterity
        case AnimalHandling:
            return .Wisdom
        case Arcana:
            return .Intelligence
        case Athletics:
            return .Strength
        case Deception:
            return .Charisma
        case History:
            return .Intelligence
        case Insight:
            return .Wisdom
        case Intimidation:
            return .Charisma
        case Investigation:
            return .Intelligence
        case Medicine:
            return .Wisdom
        case Nature:
            return .Intelligence
        case Perception:
            return .Wisdom
        case Performance:
            return .Charisma
        case Persuasion:
            return .Charisma
        case Religion:
            return .Intelligence
        case SleightOfHand:
            return .Dexterity
        case Stealth:
            return .Dexterity
        case Survival:
            return .Wisdom
        }
    }
}
