//
//  Creature.swift
//  DnD5eRuleset
//
//  Created by Brentley Jones on 7/29/15.
//  Copyright © 2015 DnD5eRuleset. All rights reserved.
//

import Foundation

public struct Creature {
    
    public enum Size {
        case Tiny
        case Small
        case Medium
        case Large
        case Huge
        case Gargantuan
    }
    
    public typealias Speed = [MovementType: Distance]
    public let speed: Speed
    
    public let size: Size
    
    public init(size: Size = .Medium, speed: Speed) {
        self.size = size
        self.speed = speed
    }
    
}
