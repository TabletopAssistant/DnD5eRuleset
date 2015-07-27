//
//  Character.Information.swift
//  DnD5eRuleset
//
//  Created by Brentley Jones on 7/27/15.
//  Copyright © 2015 DnD5eRuleset. All rights reserved.
//

import Foundation

extension Character {
    
    public struct Information: Equatable {
        
        public var name: String
        
        public init(name: String) {
            self.name = name
        }
        
    }
    
}

// MARK: - Equatable

public func == (lhs: Character.Information, rhs: Character.Information) -> Bool {
    return lhs.name == rhs.name
}
