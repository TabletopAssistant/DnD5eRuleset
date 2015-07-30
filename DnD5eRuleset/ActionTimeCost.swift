//
//  ActionTimeCost.swift
//  DnD5eRuleset
//
//  Created by Brentley Jones on 7/30/15.
//  Copyright © 2015 DnD5eRuleset. All rights reserved.
//

import Foundation

public enum ActionTimeCost {
    case Action(ActionType)
    // TODO: Figure out a way to reference the global `Duration` without using explicit module name
    case Duration(DnD5eRuleset.Duration)
}
