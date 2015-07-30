//
//  Armor.swift
//  DnD5eRuleset
//
//  Created by Brentley Jones on 7/30/15.
//  Copyright © 2015 DnD5eRuleset. All rights reserved.
//

import Foundation

public protocol ArmorType {
    
    var name: String { get }
    var weight: Weight { get }
    
    var donDuration: ActionTimeCost { get }
    var doffDuration: ActionTimeCost { get }
    
}

// MARK: -
// MARK: Armor
// MARK: -

public struct Armor: ArmorType, Equatable {
    
    public enum Category {
        case Unarmored
        case Light
        case Medium
        case Heavy
    }
    
    public static let unarmored = Armor(name: "Unarmored", category: Category.Unarmored, baseArmorClass: 10, weight: .Weightless)
    
    public let name: String
    public let category: Category
    public let baseArmorClass: Int
    
    public let weight: Weight
    
    public var donDuration: ActionTimeCost {
        switch category {
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
    
    public var doffDuration: ActionTimeCost {
        switch category {
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
    
    public func armorClass(dexterity dexterity: AbilityScore) -> Int {
        switch category {
        case .Unarmored, .Light:
            return baseArmorClass + dexterity.modifier
        case .Medium:
            return baseArmorClass + min(2, dexterity.modifier)
        case .Heavy:
            return baseArmorClass
        }
    }
    
}

// MARK: - Equatable

public func == (lhs: Armor, rhs: Armor) -> Bool {
    return lhs.name == rhs.name
        && lhs.category == rhs.category
        && lhs.baseArmorClass == rhs.baseArmorClass
        && lhs.weight == rhs.weight
}

// MARK: -
// MARK: Shield
// MARK: -

public struct Shield: ArmorType, Equatable {
    
    public let name: String
    
    public let weight: Weight
    
    public let donDuration: ActionTimeCost = .Action(.Action)
    public var doffDuration: ActionTimeCost = .Action(.Action)
    
}

// MARK - Equatable

public func == (lhs: Shield, rhs: Shield) -> Bool {
    return lhs.name == rhs.name
        && lhs.weight == rhs.weight
}
