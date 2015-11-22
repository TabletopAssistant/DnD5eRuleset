//
//  ActionTimeCost.swift
//  DnD5eRuleset
//
//  Created by Brentley Jones on 7/30/15.
//  Copyright © 2015 Brentley Jones. All rights reserved.
//

// TODO: OMG bad name
public enum ActionTimeCost {
    case ActionType(DnD5eRuleset.ActionType)
    // TODO: Figure out a way to reference the global `Duration` without using explicit module name
    case Duration(DnD5eRuleset.Duration)
    
    static let Action: ActionTimeCost = .ActionType(.Action)
    static let BonusAction: ActionTimeCost = .ActionType(.BonusAction)
    static let Reaction: ActionTimeCost = .ActionType(.Reaction)
}
