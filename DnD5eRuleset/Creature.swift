//
//  Creature.swift
//  DnD5eRuleset
//
//  Created by Brentley Jones on 7/29/15.
//  Copyright © 2015 Brentley Jones. All rights reserved.
//

public enum CreatureSize {
    case Tiny
    case Small
    case Medium
    case Large
    case Huge
    case Gargantuan
}

// TODO: Determine if this should simply be a string, and is extensible. Same logic as why SkillType is a protocol instead of an enum.
/// Called "creature type" in the rules.
public enum CreatureCategory {
    case Aberration
    case Beast
    case Celestial
    case Construct
    case Dragon
    case Elemental
    case Fey
    case Fiend
    case Giant
    case Humanoid
    case Monstrosity
    case Ooze
    case Plant
    case Undead
    
//    case Other(String) // Is this where "swarm of Tiny beasts" would fit?
}

public typealias CreatureSpeeds = [MovementMode: Distance]

public protocol SenseType {
    var name: String { get }
    var range: Distance { get }
}

public struct LanguageCompetency {
    public static let Default = LanguageCompetency(canSpeak: true, canRead: true, canWrite: true)
    public static let None = LanguageCompetency(canSpeak: false, canRead: false, canWrite: false)

    public let canSpeak: Bool
    public let canRead: Bool
    public let canWrite: Bool
}
public typealias LanguageCompetencies = [String: LanguageCompetency]

public protocol CreatureType {
    var creatureCategories: Set<CreatureCategory> { get }
    var creatureCategoryTags: Set<String> { get }
    var size: CreatureSize { get }
    var speeds: CreatureSpeeds { get }
    var alignment: Alignment { get }
    
    var abilityScores: AbilityScores { get }
    
    var hitPoints: Int { get }
    var armorClass: Int { get }
    
    // TODO: Damage multipliers (vulnerable, resistant, immune)
    
    var savingThrowProficiencies: Set<Ability> { get }

    /// The names of the skills the creature is proficient in.
    var skillProficiencies: Set<Skill> { get }
    
    // TODO: Senses

    var languageCompetencies: LanguageCompetencies { get }
}

public extension CreatureType {
    var creatureCategoryTags: Set<String> { return Set<String>() }
}
