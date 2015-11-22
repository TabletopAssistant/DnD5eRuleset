//
//  RaceType.swift
//  DnD5eRuleset
//
//  Created by Brentley Jones on 7/27/15.
//  Copyright © 2015 Brentley Jones. All rights reserved.
//

public protocol RaceType {
    var size: CreatureSize { get }
    var speeds: CreatureSpeeds { get }
}

public extension RaceType {
    public var size: CreatureSize { return .Medium }
    public var speeds: CreatureSpeeds { return [.Walking: .Feet(30)] }
}
