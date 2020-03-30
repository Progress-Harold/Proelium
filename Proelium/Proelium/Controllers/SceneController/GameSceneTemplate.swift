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
        addChild(board.mainNode)
        
        setupBoard()
    }
    
    func setupBoard() {
        board.setup()
        board.spaces.forEach { (space) in
            let tokenSpace = SKSpriteNode(texture: SKTexture(imageNamed: "TokenSpace"))
            tokenSpace.position = space.position ?? CGPoint()
            space.sprite = tokenSpace
            self.board.mainNode.addChild(tokenSpace)
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.board.spaceSelected = false
        }
        
        for t in touches {
            let location = t.location(in: board.mainNode)
            board.selectSpace(location)
        }
    }
}
