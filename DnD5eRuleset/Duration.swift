//
//  Duration.swift
//  DnD5eRuleset
//
//  Created by Brentley Jones on 7/29/15.
//  Copyright © 2015 Brentley Jones. All rights reserved.
//

public enum Duration {
    case Instantaneous
    case Round(Int)
    case Minute(Int)
    case Hour(Int)
    case Day(Int)
    case Year(Int)
    
    public static var roundsPerMinute = 10
    public static var minutesPerHour = 60
    public static var hoursPerDay = 24
    public static var daysPerYear = 365
    
    public var rounds: Int {
        switch self {
        case .Instantaneous:
            return 0
        case .Round(let rounds):
            return rounds
        case .Minute(let minutes):
            return minutes * Duration.roundsPerMinute
        case .Hour(let hours):
            return hours * Duration.minutesPerHour * Duration.roundsPerMinute
        case .Day(let days):
            return days * Duration.hoursPerDay * Duration.minutesPerHour * Duration.roundsPerMinute
        case .Year(let years):
            return years * Duration.daysPerYear * Duration.hoursPerDay * Duration.minutesPerHour * Duration.roundsPerMinute
        }
    }
}
