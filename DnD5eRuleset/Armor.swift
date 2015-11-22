//
//  Armor.swift
//  DnD5eRuleset
//
//  Created by Brentley Jones on 7/30/15.
//  Copyright © 2015 Brentley Jones. All rights reserved.
//

public protocol Donable {
    var donningTime: ActionTimeCost { get }
    var doffingTime: ActionTimeCost { get }
}

public protocol ArmorClassBonusable {
    var armorClassBonus: Int { get }
}

public protocol ArmorProficiencyType {
}

public enum ArmorCategory: ArmorProficiencyType {
    case Unarmored  // This one might have to be removed. Think about class.armorProficiencies
    case Light
    case Medium
    case Heavy
}

public protocol ArmorType: ItemType, Donable, ArmorProficiencyType {
    var armorCategory: ArmorCategory { get }
    var baseArmorClassModifier: Int { get } // Defaults to 10 for unarmored
    // TODO: Strength requirement
    // TODO: Steath disadvantage
    
    func baseArmorClass(dexterity dexterity: AbilityScore) -> Int
}

public extension ArmorType {
    public var donningTime: ActionTimeCost {
        switch armorCategory {
        case .Unarmored:
            return .Duration(.Instantaneous)
        case .Light:
            return .Duration(.Minute(1))
        case .Medium:
            return .Duration(.Minute(5))
        case .Heavy:
            return .Duration(.Minute(10))
        }
    }
    
    public var doffingTime: ActionTimeCost {
        switch armorCategory {
        case .Unarmored:
            return .Duration(.Instantaneous)
        case .Light:
            return .Duration(.Minute(1))
        case .Medium:
            return .Duration(.Minute(1))
        case .Heavy:
            return .Duration(.Minute(5))
        }
    }
    
    public func baseArmorClass(dexterity dexterity: AbilityScore) -> Int {
        switch armorCategory {
        case .Unarmored, .Light:
            return baseArmorClassModifier + dexterity.modifier
        case .Medium:
            return baseArmorClassModifier + min(2, dexterity.modifier)
        case .Heavy:
            return baseArmorClassModifier
        }
    }
}

public protocol ShieldType: ItemType, Donable, ArmorClassBonusable, ArmorProficiencyType {
}

public extension ShieldType {
    var donningTime: ActionTimeCost { return .Action }
    var doffingTime: ActionTimeCost { return .Action }
}
