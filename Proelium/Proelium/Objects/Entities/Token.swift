//
//  Token.swift
//  Proelium
//
//  Created by Anthony Torres on 3/19/20.
//  Copyright © 2020 EightFoldGames. All rights reserved.
//

import UIKit
import SpriteKit

class Token {
    
    var name: String
    var attackPoints: Int
    var defensePoints: Int
    var lifePoints: Int
    var description: String
    var tokenImage: SKTexture
    //var speacialAbility: Ability
    //var type: Type
    
    init(name: String, attackPoints: Int, defensePoints: Int, lifePoints: Int, description: String, tokenImage: SKTexture) {
        self.name = name
        self.attackPoints = attackPoints
        self.defensePoints = defensePoints
        self.lifePoints = lifePoints
        self.description = description
        self.tokenImage = tokenImage
    }
}
