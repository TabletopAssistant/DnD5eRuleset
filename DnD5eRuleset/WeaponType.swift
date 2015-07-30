//
//  WeaponType.swift
//  DnD5eRuleset
//
//  Created by Brentley Jones on 7/31/15.
//  Copyright © 2015 Brentley Jones. All rights reserved.
//

public protocol WeaponProficiencyType {
}

public enum WeaponCategory: WeaponProficiencyType {
    case Simple
    case Martial
}

public enum WeaponWeight {
    case Light
    case Normal
    case Heavy
}

public protocol WeaponType: ItemType, WeaponProficiencyType {
    var weaponCategory: WeaponCategory { get }
    var weaponWeight: WeaponWeight { get }
    
    var finesse: Bool { get }
    var twoHanded: Bool { get }
    
    // TODO: damage (net has no damage. I'm not sure how to handle that)
    // TODO: versitile damage optional
    
    var specialRules: Bool { get }
}

public extension WeaponType {
    var weaponWeight: WeaponWeight { return .Normal }
}

public protocol MeleeWeaponType: WeaponType {
    var thrownRange: WeaponRange? { get }
}

public struct WeaponRange {
    let normalRange: Distance
    let longRange: Distance
}

public protocol RangedWeaponType: WeaponType {
    var weaponRange: WeaponRange { get }
    
    var requiresLoading: Bool { get } // Is it possible for Melee to require loading?
}
