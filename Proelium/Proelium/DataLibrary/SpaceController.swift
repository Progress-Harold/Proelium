//
//  SpaceController.swift
//  Proelium
//
//  Created by Lee Davis on 3/30/20.
//  Copyright © 2020 EightFoldGames. All rights reserved.
//

import Foundation
import SpriteKit

class SpaceController {
    static var sharedInstence = SpaceController()
    
    func setSpaces(board: GameBoardStructure) {
        
    }
    
    // TODO: - add a parameter for the type of token to add
    // TODO: add a parameter of tier
    func setTokenWith(_ space: Space, in scene: SKScene) {
        let token = SKSpriteNode(imageNamed: "FalseTokenSpace")
        token.alpha = 0
        scene.addChild(token)
        token.position = space.position ?? CGPoint()
        token.run(.fadeIn(withDuration: 0.7))
        token.alpha = 1
        token.removeAllActions()
        space.token = Token(name: "test", attackPoints: 5, defensePoints: 5, lifePoints: 5, description: "", tokenImage: SKTexture())
        space.token?.tokenSprite = token
    }
}
