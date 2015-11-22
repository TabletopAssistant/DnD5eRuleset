//
//  ClassType.swift
//  DnD5eRuleset
//
//  Created by Brentley Jones on 7/27/15.
//  Copyright © 2015 Brentley Jones. All rights reserved.
//

import DiceKit

public struct SkillProficencyOptions {
    public let skills: Set<Skill>
    public let numberAllowed: Int
}

public protocol ClassType {
    var hitDie: Die { get }
    
    var armorProficiencies: [ArmorProficiencyType] { get } // This should be a Set<ArmorProficiencyType>, but Swift is being a pain
    var weaponProficiencies: [WeaponProficiencyType] { get } // This should be a Set<WeaponProficiencyType>, but Swift is being a pain
    // TODO: Tool Proficiencies
    var savingThrowProficiencies: Set<Ability> { get }
    var skillProficiencyOptions: SkillProficencyOptions { get }
    
    // TODO: Starting gold
    // TODO: Starting equipment
}

public protocol SpellCastingClassType: ClassType {
    var spellCastingAbility: Ability { get }
    
    // TODO: Spell slots
}
