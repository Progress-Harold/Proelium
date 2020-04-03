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
    var sController = SpaceController.sharedInstence
    
    override func sceneDidLoad() {
        super.sceneDidLoad()
        addChild(board.mainNode)
        
        setupBoard()
        sController.setTokenWith(board.k, in: self)
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
        
        if self.board.spaceSelected {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                self.board.spaceSelected = false
                self.board.diactivateGlowingSpace(completion: {})
            }
        }
        
        for t in touches {
            let location = t.location(in: board.mainNode)
            board.selectSpace(location)
        }
    }
}
