//
//  AbilityScore_Tests.swift
//  DnD5eRuleset
//
//  Created by Brentley Jones on 11/22/15.
//  Copyright © 2015 Brentley Jones. All rights reserved.
//

import XCTest
import Nimble

import DnD5eRuleset

class AbilityScore_Tests: XCTestCase {
}

// MARK: - Initialization

extension AbilityScore_Tests {
    // TODO: Test initialization
}

// MARK: - Equatable

extension AbilityScore_Tests {
    // TODO: Test Equtable
}

// MARK: -

extension AbilityScore_Tests {
    func test_modifier_isCalculatedCorrectly() {
        let fixtures: [(score: Int, modifier: Int)] = [
            (score: 18, modifier: 4),
            (score: 17, modifier: 3),
            (score: 11, modifier: 0),
            (score: 10, modifier: 0),
            (score: 9, modifier: -1),
            (score: 8, modifier: -1),
            (score: 0, modifier: -5),
        ]
        let expectedModifiers = fixtures.map { $0.modifier }

        let modifiers = fixtures.map { AbilityScore($0.score).modifier }

        expect(modifiers) == expectedModifiers
    }
}
