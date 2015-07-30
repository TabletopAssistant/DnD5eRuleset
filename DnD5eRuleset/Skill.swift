//
//  Skill.swift
//  DnD5eRuleset
//
//  Created by Brentley Jones on 7/30/15.
//  Copyright © 2015 DnD5eRuleset. All rights reserved.
//

import Foundation

public struct Skill: Equatable {
    
    public let name: String
    public let baseAbility: Ability
    
}

// MARK: - Equatable

public func == (lhs: Skill, rhs: Skill) -> Bool {
    return lhs.name == rhs.name && lhs.baseAbility == rhs.baseAbility
}
