//
//  Spell.swift
//  DnD5eRuleset
//
//  Created by Brentley Jones on 7/27/15.
//  Copyright © 2015 DnD5eRuleset. All rights reserved.
//

import Foundation

public struct Spell {
    
    public enum Level: Int {
        case Cantrip = 0
        case One, Two, Three, Four, Five, Six, Seven, Eight, Nine
    }
    
    public enum School: String {
        case Abjuration
        case Conjuration
        case Divination
        case Enchantment
        case Evocation
        case Illusion
        case Necromancy
        case Transmutation
    }
    
    public enum Component: String {
        case Verbal = "V"
        case Somatic = "S"
        case Material = "M"
    }
    
    public enum Duration {
        case Standard(DnD5eRuleset.Duration)
        case Concentration(upTo: DnD5eRuleset.Duration)
        case UntilDispelled
        case Special
    }
    
    public enum Range {
        case `Self`
        case Touch
        // TODO: Figure out a way to reference the global `Distance` without using explicit module name
        case Distance(DnD5eRuleset.Distance)
    }
    
    public let name: String
    public let level: Level
    public let school: School
    public let ritualCastable: Bool // TODO: Default to false
    
    public let castingTime: ActionTimeCost
    public let range: Range
    public let components: Set<Component>
    public let duration: Spell.Duration
    
    // TODO: Description
    // TODO: At higher levels
    
}
