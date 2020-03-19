//
//  GameSceneTemplate.swift
//  Proelium
//
//  Created by Lee Davis on 3/18/20.
//  Copyright © 2020 EightFoldGames. All rights reserved.
//

import Foundation
import SpriteKit

class GameSceneTemplate: SKScene {
    var board: GameBoardStructure = GameBoardStructure()
    
    override func sceneDidLoad() {
        super.sceneDidLoad()
        self.addChild(board.mainNode)
        
        setupBoard()
    }
    
    func setupBoard() {
        board.setup()
        board.spaces.forEach { (space) in
            let tokenSpace = SKSpriteNode(texture: SKTexture(imageNamed: "TokenSpace"))
            tokenSpace.position = space.position ?? CGPoint()
            self.addChild(tokenSpace)
        }
    }
}
