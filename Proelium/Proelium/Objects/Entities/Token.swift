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
    var tokenSprite: SKSpriteNode = SKSpriteNode()
    //var speacialAbility: Ability
    //var type: Type
    
    init?(name: String, attackPoints: Int, defensePoints: Int, lifePoints: Int, description: String, tokenImage: SKTexture) {
        self.name = name
        self.attackPoints = attackPoints
        self.defensePoints = defensePoints
        self.lifePoints = lifePoints
        self.description = description
        self.tokenImage = tokenImage
    }
    
    init(dict: [String:Any]) {
        self.name = dict[TokenKey.name] as? String ?? ""
        self.attackPoints = dict[TokenKey.aP] as? Int ?? 0
        self.defensePoints = dict[TokenKey.dP] as? Int ?? 0
        self.lifePoints = dict[TokenKey.lP] as? Int ?? 0
        self.description = dict[TokenKey.desc] as? String ?? ""
        self.tokenImage = SKTexture(imageNamed: dict[TokenKey.name] as? String ?? "")
    }
}
