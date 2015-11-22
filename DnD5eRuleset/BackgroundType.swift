//
//  BackgroundType.swift
//  DnD5eRuleset
//
//  Created by Brentley Jones on 7/31/15.
//  Copyright © 2015 Brentley Jones. All rights reserved.
//

public protocol BackgroundType {
    /// The names of the skills that are granted by the background.
    ///
    /// There are usually two granted.
    var skillProficiencies: Set<Skill> { get }

    /// The language compentencies granted by the background.
    ///
    /// There are usually two, between this and tools, granted.
    var languageCompetencies: LanguageCompetencies { get }
    // TODO: Tools

    // TODO: Equipment
    
    // TODO: Feature
}
