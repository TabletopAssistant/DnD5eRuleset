//
//  SpellType.swift
//  DnD5eRuleset
//
//  Created by Brentley Jones on 7/27/15.
//  Copyright © 2015 Brentley Jones. All rights reserved.
//

public enum SpellLevel: Int {
    case Cantrip = 0
    case One, Two, Three, Four, Five, Six, Seven, Eight, Nine
}

public enum SpellSchool {
    case Abjuration
    case Conjuration
    case Divination
    case Enchantment
    case Evocation
    case Illusion
    case Necromancy
    case Transmutation
}

public enum SpellComponent {
    case Verbal
    case Somatic
    case Material
}

public enum SpellEffectDuration {
    case Duration(DnD5eRuleset.Duration)
    case Concentration(upTo: DnD5eRuleset.Duration)
    case UntilDispelled
    case Special
}

public enum CastingRange {
    case `Self`
    case Touch
    // TODO: Figure out a way to reference the global `Distance` without using explicit module name
    case Distance(DnD5eRuleset.Distance)
}

public protocol SpellType {
    var spellLevel: SpellLevel { get }
    var spellSchool: SpellSchool { get }
    var ritualCastable: Bool { get }
    
    var castingTime: ActionTimeCost { get }
    var castingRange: CastingRange { get }
    var spellComponents: Set<SpellComponent> { get }
    var spellEffectDuration: SpellEffectDuration { get }
    
    // TODO: Description
    // TODO: At higher levels
}

public extension SpellType {
    var ritualCastable: Bool { return false }
}
