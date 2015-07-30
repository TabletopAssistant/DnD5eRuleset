//
//  Character.Information_Tests.swift
//  DnD5eRuleset
//
//  Created by Brentley Jones on 7/27/15.
//  Copyright © 2015 DnD5eRuleset. All rights reserved.
//

import XCTest
import Nimble
import SwiftCheck

import DnD5eRuleset

class Character_Information_Tests : XCTestCase {

}

// MARK: - Equatable
extension Character_Information_Tests {
    
    func test_shouldBeReflexive() {
        property("reflexive") <- forAll {
            (n: String) in
            
            let x = Character.Information(name: n)
            
            return x == x
        }
    }
    
    func test_shouldBeSymmetric() {
        property("symmetric") <- forAll {
            (n: String) in
            
            let x = Character.Information(name: n)
            let y = Character.Information(name: n)
            
            return x == y && y == x
        }
    }
    
    func test_shouldBeTransitive() {
        property("transitive") <- forAll {
            (n: String) in
            
            let x = Character.Information(name: n)
            let y = Character.Information(name: n)
            let z = Character.Information(name: n)
            
            return x == y && y == z && x == z
        }
    }
    
    func test_shouldBeAbleToNotEquate() {
        property("non-equal") <- forAll {
            (n: String, o: String) in
            
            guard n != o else { return true }
            
            let x = Character.Information(name: n)
            let y = Character.Information(name: o)
            
            return x != y
        }
    }
    
}
