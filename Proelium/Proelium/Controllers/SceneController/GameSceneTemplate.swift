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
    override func sceneDidLoad() {
        super.sceneDidLoad()
        GameBoardStructure().setUp()
    }
}
