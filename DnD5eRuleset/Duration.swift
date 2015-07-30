//
//  Duration.swift
//  DnD5eRuleset
//
//  Created by Brentley Jones on 7/29/15.
//  Copyright © 2015 DnD5eRuleset. All rights reserved.
//

import Foundation

public enum Duration {
    case Instantaneous
    case Round(Int)
    case Minute(Int)
    case House(Int)
    case Day(Int)
    case Month(Int)
    case Year(Int)
}
