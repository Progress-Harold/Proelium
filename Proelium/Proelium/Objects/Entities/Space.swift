//
//  Space.swift
//  Proelium
//
//  Created by Anthony Torres on 3/18/20.
//  Copyright © 2020 John Torres. All rights reserved.
//

import UIKit
import SpriteKit

enum Location {
    case left,upperLeft,top,upperRight,right,lowerRight,bottom,lowerLeft
}

/**
 Space is an object used to represent a token space on a board.
 - A space has a top, bottom, left,  right, upper left, upper right, lower left, and lower right
 - In order to init a space a marker number is required. a marker is used to keep track of the space in a given board.
 */
class Space {
    var t: Space?
    var b: Space?
    var ul: Space?
    var ll: Space?
    var l: Space?
    var ur: Space?
    var lr: Space?
    var r: Space?
    
    var token: Token?
    var sprite: SKSpriteNode = SKSpriteNode()
    
    var glow: SKSpriteNode {
        let availableSpace = SKSpriteNode(texture: SKTexture(imageNamed: "availableSpace"))
        availableSpace.alpha = 0
        sprite.addChild(availableSpace)
        return availableSpace
    }
    
    var glowActivated: Bool = false
    
    var position: CGPoint?
    
    var isEmpty: Bool {
        return (token == nil)
    }
    
    var surroundingSpaces: [Space?] {
        return [l, ul, t, ur, r, lr, b, ll]
    }
    
    var marker: Int
        
    init(_ marker: Int) {
        self.marker = marker
    }
    
    // TODO: Create a func for available spaces that is specificly for abilities
    func availableSpaces() -> [Space] {
        var spaces = [Space]()
        
        for space in surroundingSpaces {
            if let space = space,
                space.isEmpty {
                spaces.append(space)
            }
        }
        return spaces
    }
    
    func activateAvailableGlow() {
        glowActivated = true
        print(sprite.size)
        if glowActivated {
            DispatchQueue.main.async {
                self.glow.run(SKAction(named: "Pulse") ?? SKAction())
            }
        }
    }
    
    func moveTo(location: Location) {
        switch location {
        case .left:
            if self.availableSpaces().contains(where: {$0.marker == self.l?.marker}) {
                self.l?.token = self.token
                print("Player moved token\(String(describing: self.token)) from Space#:\(self.marker) -> Space#:\(String(describing: self.l?.marker))")
                self.token = nil
                print("Previous Token:\(self.token ?? Token(dict: [:]))")
            }
        case .upperLeft:
            if self.availableSpaces().contains(where: {$0.marker == self.ul?.marker}) {
                self.ul?.token = self.token
                print("Player moved token\(String(describing: self.token)) from Space#:\(self.marker) -> Space#:\(String(describing: self.ul?.marker))")
                self.token = nil
                print("Previous Token:\(self.token ?? Token(dict: [:]))")
            }
        case .top:
            if self.availableSpaces().contains(where: {$0.marker == self.t?.marker}) {
                self.t?.token = self.token
                print("Player moved token\(String(describing: self.token)) from Space#:\(self.marker) -> Space#:\(String(describing: self.t?.marker))")
                self.token = nil
                print("Previous Token:\(self.token ?? Token(dict: [:]))")
            }
        case .upperRight:
            if self.availableSpaces().contains(where: {$0.marker == self.ur?.marker}) {
                self.ur?.token = self.token
                print("Player moved token\(String(describing: self.token)) from Space#:\(self.marker) -> Space#:\(String(describing: self.ur?.marker))")
                self.token = nil
                print("Previous Token:\(self.token ?? Token(dict: [:]))")
            }
        case .right:
            if self.availableSpaces().contains(where: {$0.marker == self.r?.marker}) {
                self.r?.token = self.token
                print("Player moved token\(String(describing: self.token)) from Space#:\(self.marker) -> Space#:\(String(describing: self.r?.marker))")
                self.token = nil
                print("Previous Token:\(self.token ?? Token(dict: [:]))")
            }
        case .lowerRight:
            if self.availableSpaces().contains(where: {$0.marker == self.lr?.marker}) {
                self.lr?.token = self.token
                print("Player moved token\(String(describing: self.token)) from Space#:\(self.marker) -> Space#:\(String(describing: self.lr?.marker))")
                self.token = nil
                print("Previous Token:\(self.token ?? Token(dict: [:]))")
            }
        case .bottom:
            if self.availableSpaces().contains(where: {$0.marker == self.b?.marker}) {
                self.b?.token = self.token
                print("Player moved token\(String(describing: self.token)) from Space#:\(self.marker) -> Space#:\(String(describing: self.b?.marker))")
                self.token = nil
                print("Previous Token:\(self.token ?? Token(dict: [:]))")
            }
        case .lowerLeft:
            if  self.availableSpaces().contains(where: {$0.marker == self.ll?.marker}) {
                self.ll?.token = self.token
                print("Player moved token\(String(describing: self.token)) from Space#:\(self.marker) -> Space#:\(String(describing: self.ll?.marker))")
                self.token = nil
                print("Previous Token:\(self.token ?? Token(dict: [:]))")
            }
        }
    }
}
