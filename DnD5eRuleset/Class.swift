//
//  Class.swift
//  DnD5eRuleset
//
//  Created by Brentley Jones on 7/27/15.
//  Copyright © 2015 DnD5eRuleset. All rights reserved.
//

import Foundation
import DiceKit

public struct Class: Equatable {
    
    public let name: String
    
    public let hitDie: Die
    
}

// MARK: - Equatable

public func == (lhs: Class, rhs: Class) -> Bool {
    return lhs.name == rhs.name && lhs.hitDie == rhs.hitDie
}
