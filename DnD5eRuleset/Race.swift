//
//  Race.swift
//  DnD5eRuleset
//
//  Created by Brentley Jones on 7/27/15.
//  Copyright © 2015 DnD5eRuleset. All rights reserved.
//

import Foundation

public struct Race: Equatable {
    
    public let name: String
    
}

// MARK: - Equatable

public func == (lhs: Race, rhs: Race) -> Bool {
    return lhs.name == rhs.name
}
