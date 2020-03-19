//
//  GameBoardStructure.swift
//  Proelium
//
//  Created by Anthony Torres on 3/18/20.
//  Copyright © 2020 John Torres. All rights reserved.
//

import Foundation
import SpriteKit

/// Structure to hold the spaces together
struct GameBoardStructure {
    var mainNode: SKNode = SKNode()

    var spaces: [Space] = []
    
    // MARK: Player 1 spaces
    // tier 1s
    let c1: Space = Space(10)
    let c2: Space = Space(11)
    let c3: Space = Space(12)
    let c4: Space = Space(13)
    let r1: Space = Space(14)
    let r2: Space = Space(15)
    let r3: Space = Space(16)
    // tier 2s
    let h1: Space = Space(5)
    let h2: Space = Space(6)
    let s1: Space = Space(7)
    let s2: Space = Space(8)
    let s3: Space = Space(9)
    // Kings guards space tier 3s
    let d: Space = Space(2)
    let h: Space = Space(3)
    let o: Space = Space(4)
    // Base
    let k: Space = Space(1)
    // MARK: Player 2 spaces
    // tier 1s
    let p2c1: Space = Space(52)
    let p2c2: Space = Space(50)
    let p2c3: Space = Space(49)
    let p2c4: Space = Space(48)
    let p2r1: Space = Space(47)
    let p2r2: Space = Space(46)
    let p2r3: Space = Space(45)
    // tier 2s
    let p2h1: Space = Space(57)
    let p2h2: Space = Space(56)
    let p2s1: Space = Space(55)
    let p2s2: Space = Space(54)
    let p2s3: Space = Space(53)
    // Kings guards space tier 3s
    let p2d: Space = Space(58)
    let p2h: Space = Space(59)
    let p2o: Space = Space(60)
    // Base
    let p2k: Space = Space(61)
    
    // MARK: Mid Structure
    // Upper Middle
    let um1: Space = Space(37)
    let um2: Space = Space(38)
    let um3: Space = Space(39)
    let um4: Space = Space(40)
    let um5: Space = Space(41)
    let um6: Space = Space(42)
    let um7: Space = Space(43)
    let um8: Space = Space(44)
    let um9: Space = Space(45)
    // Middle Middle
    let m1: Space = Space(26)
    let m2: Space = Space(27)
    let m3: Space = Space(28)
    let m4: Space = Space(29)
    let m5: Space = Space(30)
    let m6: Space = Space(31)
    let m7: Space = Space(32)
    let m8: Space = Space(33)
    let m9: Space = Space(34)
    let m10: Space = Space(35)
    let m11: Space = Space(36)
    // Lower Middle
    let lm1: Space = Space(17)
    let lm2: Space = Space(18)
    let lm3: Space = Space(19)
    let lm4: Space = Space(20)
    let lm5: Space = Space(21)
    let lm6: Space = Space(22)
    let lm7: Space = Space(23)
    let lm8: Space = Space(24)
    let lm9: Space = Space(25)
    
    mutating func setup() {
        spaces = [m11, m10, m9, m8, m7, m6, m5, m4, m3, m2, m1, lm9, lm8, lm7, lm6, lm5, lm4, lm3, lm2, lm1, r3, r2, r1, c4, c3, c2, c1, s3, s2, s1, h2, h1, o, h, d, k, um9, um8, um7, um6, um5, um4, um3, um2, um1, p2c1, p2c2, p2c3, p2c4, p2r1, p2r2, p2r3, p2h1, p2h2, p2s1, p2s2, p2s3, p2k, p2d, p2h, p2o]
        
        // MARK: P1 Base Structure 3 spaces
        k.ul = d
        k.t = h
        k.ur = o
        // MARK: Lvl 3 Row
        // MARK: Defense 5 space
        d.ul = h1
        d.t = h2
        d.ur = s1
        d.r = h
        d.lr = k
        // MARK:  Heal 6 space
        h.ul = h2
        h.t = s1
        h.ur = s2
        h.l = d
        h.r = o
        h.b = k
        // MARK: Offense 5 spaces
        o.ul = s1
        o.t = s2
        o.ur = s3
        o.r = h
        o.b = k
        o.ul = s1
        o.l  = h
        // MARK: Tier 3 row
        // Space 1
        h1.ul = c1
        h1.t = c2
        h1.ur = c3
        h1.r = h2
        h1.lr = d
        // space 2
        h2.l = h1
        h2.ul = c2
        h2.t = c3
        h2.ur = c4
        h2.r = s1
        h2.lr = h
        h2.b = d
        // space
        s1.l = h2
        s1.ul = c3
        s1.t = c4
        s1.ur = r1
        s1.r = s2
        s1.lr = o
        s1.b = h
        s1.ll = d
        // space 4
        s2.l = s1
        s2.ul = c3
        s2.t = r1
        s2.ur = r2
        s2.r = s3
        s2.b = o
        s2.ll = h
        // space 5
        s3.l = s2
        s3.ul = r1
        s3.t = r2
        s3.ur = r3
        s3.ll = o
        // MARK: Tier 1 Row
        // space 1
        c1.ul = lm1
        c1.t = lm2
        c1.ur = lm3
        c1.r = c2
        c1.lr = h1
        // space 2
        c2.l = c1
        c2.ul = lm2
        c2.t = lm3
        c2.ur = lm4
        c2.r = c3
        c2.lr = h2
        c2.b = h1
        // space 3
        c3.l = c2
        c3.ul = lm2
        c3.t = lm3
        c3.ur = lm4
        c3.r = c4
        c3.lr = s1
        c3.b = h2
        c3.ll = h1
        // space 4
        c4.l = c3
        c4.ul = lm4
        c4.t = lm5
        c4.ur = lm6
        c4.r = r1
        c4.lr = s2
        c4.b = s1
        c4.ll = h2
        // space 5
        r1.l = c4
        r1.ul = lm5
        r1.t = lm6
        r1.ur = lm7
        r1.r = r2
        r1.lr = s3
        r1.b = s2
        r1.ll = s1
        // space 6
        r2.l = r1
        r2.ul = lm6
        r2.t = lm7
        r2.ur = lm8
        r2.r = r3
        r2.b = s3
        r2.ll = s2
        // space 7
        r3.l = r2
        r3.ul = lm7
        r3.t = lm8
        r3.ur = lm9
        r3.ll = s3


        // MARK: P1 Base Structure 3 spaces
        k.ur = o
        // MARK: Tier 3 Row
        // MARK: Defense 5 space
        d.ul = h1
        d.t = h2
        d.ur = s1
        d.r = h
        d.lr = k
        // MARK:  Heal 6 space
        h.l = d
        h.ul = h2
        h.t = s1
        h.ur = s2
        h.r = o
        h.b = k
        // MARK: Offense 5 spaces
        o.l = h
        o.ul = s1
        o.t = s2
        o.ur = s3
        o.ll = k
        // MARK: Tier 2 row
        // Space 1
        h1.ul = c1
        h1.t = c2
        h1.ur = c3
        h1.r = h2
        h1.lr = d
        // space 2
        h2.l = h1
        h2.ul = c2
        h2.t = c3
        h2.ur = c4
        h2.r = s1
        h2.lr = h
        h2.b = d
        // space 3
        s1.l = h2
        s1.ul = c3
        s1.t = c4
        s1.ur = r1
        s1.r = s2
        s1.lr = o
        s1.b = h
        s1.ll = d
        // space 4
        s2.l = s1
        s2.ul = c3
        s2.t = r1
        s2.ur = r2
        s2.r = s3
        s2.b = o
        s2.ll = h
        // space 5
        s3.l = s2
        s3.ul = r1
        s3.t = r2
        s3.ur = r3
        s3.ll = o
        // MARK: Tier 1 Row
        // space 1
        c1.ul = lm1
        c1.t = lm2
        c1.ur = lm3
        c1.r = c2
        c1.lr = h1
        // space 2
        c2.l = c1
        c2.ul = lm2
        c2.t = lm3
        c2.ur = lm4
        c2.r = c3
        c2.lr = h2
        c2.b = h1
        // space 3
        c3.l = c2
        c3.ul = lm2
        c3.t = lm3
        c3.ur = lm4
        c3.r = c4
        c3.lr = s1
        c3.b = h2
        c3.ll = h1
        // space 4
        c4.l = c3
        c4.ul = lm4
        c4.t = lm5
        c4.ur = lm6
        c4.r = r1
        c4.lr = s2
        c4.b = s1
        c4.ll = h2
        // space 5
        r1.l = c4
        r1.ul = lm5
        r1.t = lm6
        r1.ur = lm7
        r1.r = r2
        r1.lr = s3
        r1.b = s2
        r1.ll = s1
        // space 6
        r2.l = r1
        r2.ul = lm6
        r2.t = lm7
        r2.ur = lm8
        r2.r = r3
        r2.b = s3
        r2.ll = s2
        // space 7
        r3.l = r2
        r3.ul = lm7
        r3.t = lm8
        r3.ur = lm9
        r3.ll = s3
        // MARK: Lower Mid
        // space 1
        lm1.ul = m1
        lm1.t = m2
        lm1.ur = m3
        lm1.r = lm2
        lm1.lr = c1
        // space 2
        lm2.l = lm1
        lm2.ul = m2
        lm2.t = m3
        lm2.ur = m4
        lm2.r = lm3
        lm2.lr = c2
        lm2.b = c1
        // space 3
        lm3.l = lm2
        lm3.ul = m3
        lm3.t = m4
        lm3.ur = m5
        lm3.r = lm4
        lm3.lr = c3
        lm3.b = c2
        lm3.ll = c1
        // space 4
        lm4.l = lm3
        lm4.ul = m4
        lm4.t = m5
        lm4.ur = m6
        lm4.r = lm5
        lm4.lr = c4
        lm4.b = c3
        lm4.ll = c2
        // space 5
        lm5.l = lm4
        lm5.ul = m5
        lm5.t = m6
        lm5.ur = m7
        lm5.r = lm6
        lm5.lr = r1
        lm5.b = c4
        lm5.ll = c3
        // space 6
        lm6.l = lm5
        lm6.ul = m6
        lm6.t = m8
        lm6.ur = m9
        lm6.r = lm7
        lm6.lr = r2
        lm6.b = r1
        lm6.ll = c4
        // space 7
        lm7.l = lm6
        lm7.ul = m7
        lm7.t = m8
        lm7.ur = m9
        lm7.r = lm8
        lm7.lr = r3
        lm7.b = r2
        lm7.ll = r1
        // space 8
        lm8.l = lm7
        lm8.ul = m8
        lm8.ur = m9
        lm8.r = lm9
        lm8.b = r3
        lm8.ll = r2
        // space 9
        lm9.l = lm8
        lm9.ul = m8
        lm9.t = m9
        lm9.ll = r3
        //  MARK: Middle Row
        // Space 1
        m1.ur = um1
        m1.r = m2
        m1.ur = lm1
        // Space 2
        m2.l = m1
        m2.t = um1
        m2.ur = um2
        m2.r = m3
        m2.lr = lm2
        m2.b = lm1
        // Space 3
        m3.l = m2
        m3.ul = um1
        m3.t = um2
        m3.ur = um3
        m3.r = m4
        m3.lr = lm3
        m3.b = lm2
        m3.ll = lm1
        // space 4
        m4.l = m3
        m4.ul = um2
        m4.t = um3
        m4.ur = um4
        m4.r = m5
        m4.lr = lm4
        m4.b = lm3
        m4.ll = lm2
        // space 5
        m5.l = m4
        m5.ul = um3
        m5.t = um4
        m5.ur = um5
        m5.r = m6
        m5.lr = lm5
        m5.b = lm4
        m5.ll = lm3
        // space 6
        m6.l = m5
        m6.ul = um4
        m6.t = um5
        m6.ur = um6
        m6.r = um7
        m6.ur = lm6
        m6.b = lm5
        m6.ll = lm4
        // space 7
        m7.l = m6
        m7.ul = um5
        m7.t = um6
        m7.ur = um7
        m7.r = m8
        m7.lr = lm7
        m7.b = lm6
        m7.ll = lm5
        // space 8
        m8.l = m7
        m8.ul = um6
        m8.t = um7
        m8.ur = um8
        m8.r = m9
        m8.lr = lm8
        m8.b = lm7
        m8.ll = lm6
        // space 9
        m9.l = m8
        m9.ul = um7
        m9.t = um8
        m9.ur = um9
        m9.r = m10
        m9.lr = lm9
        m9.b = lm8
        m9.ll = lm7
        // space 10
        m10.l = m9
        m10.ul = um8
        m10.t = um9
        m10.r = m11
        m10.b = lm9
        m10.ll = lm8
        // space 11
        m11.l = m10
        m11.ul = um9
        m11.ll = lm9
        // MARK: Upper Middle Row
        // space 1
        um1.ur = p2r3
        um1.r = um2
        um1.lr = m3
        um1.b = m2
        um1.ll = m1
        // space 2
        um2.l = um1
        um2.t = p2r3
        um2.ur = p2r2
        um2.r = um3
        um2.lr = m4
        um2.b = m3
        um2.ll = m2
        // space 3
        um3.l = um2
        um3.ul = p2r3
        um3.t = p2r2
        um3.ur = p2r1
        um3.r = um4
        um3.lr = m5
        um3.b = m4
        um3.ll = m3
        // space 4
        um4.l = um3
        um4.ul = p2r2
        um4.t = p2r1
        um4.ur = p2c3
        um4.r = p2c2
        um4.lr = m6
        um4.b = m5
        um4.ll = m4
        // space 5
        um5.l = um4
        um5.ul = p2r1
        um5.t = p2c4
        um5.ur = p2c3
        um5.r = um6
        um5.lr = m7
        um5.b = m6
        um5.ll = m5
        // space 6
        um6.l = um5
        um6.ul = p2c4
        um6.t = p2c3
        um6.ur = p2c1
        um6.r = um7
        um6.lr = m8
        um6.b = m7
        um6.ll = m6
        // space 7
        um7.l = um6
        um7.ul = p2c3
        um7.t = p2c2
        um7.ur = p2c1
        um7.r = um8
        um7.lr = m9
        um7.b = m8
        um7.ll = m7
        // space 8
        um8.l = um7
        um8.ul = p2c2
        um8.t = p2c1
        um8.r = um9
        um8.lr = m10
        um8.b = m9
        um8.ll = m8
        // space 9
        um9.l = um8
        um9.ul = p2c2
        um9.lr = m10
        um9.b = m9
        um9.ll = m8
        // FIXME: finish player 2


        // MARK: Player 2 Structure
        p2k.ll = p2o
        p2k.lr = p2d
        p2k.b = p2h
        // MARK: Tier 3 Row
        // MARK: Defense 5 space
        p2d.l = p2h
        p2d.lr = p2h1
        p2d.b = p2h2
        p2d.ll = p2s1
        // MARK:  Heal 6 space
        p2h.l = p2o
        p2h.t = p2k
        p2h.r = p2d
        p2h.lr = p2h2
        p2h.b = p2s1
        p2h.ll = p2s2
        // MARK: Offense 5 spaces
        //p2o
        p2o.r = h
        p2o.lr = s1
        p2o.b = s2
        p2o.ur = s3
        p2o.ll = k
        // MARK: Tier 2 row
        // Space 1
        //p2h1
        p2h1.l = p2h2
        p2h1.ul = p2d
        p2h1.lr = p2c1
        p2h1.b = p2c2
        p2h1.ll = p2c3
        // space 2
        //p2h2
        p2h2.l = p2s1
        p2h2.ul = p2h
        p2h2.t = p2d
        p2h2.r = p2h1
        p2h2.lr = p2c2
        p2h2.b = p2c3
        p2h2.ll = p2c4
        // space 3
        // p2s1
        p2s1.l = p2s2
        p2s1.ul = p2o
        p2s1.t = p2h
        p2s1.ur = p2d
        p2s1.r = p2h2
        p2s1.lr = p2c3
        p2s1.b = p2c4
        p2s1.ll = p2r1
        // space 4
        //p2s2
        p2s2.l = p2s3
        p2s2.t = p2o
        p2s2.ur = p2h
        p2s2.r = p2s1
        p2s2.lr = p2c4
        p2s2.b = p2r1
        p2s2.ll = p2r2
        // space 5
        //p2s3
        p2s3.ur = p2o
        p2s3.r = p2s2
        p2s3.lr = p2r1
        p2s3.b = p2r2
        p2s3.ll = p2r3
        // MARK: Tier 1 Row
        // space 1
        // p2c1
        p2c1.l = p2c2
        p2c1.ul = p2h1
        p2c1.lr = um9
        p2c1.b = um8
        p2c1.ll = um7
        // space 2
        //p2c2
        p2c2.l = p2c3
        p2c2.ul = p2h2
        p2c2.t = p2h1
        p2c2.r = p2c1
        p2c2.lr = um8
        p2c2.b = um7
        p2c2.ll = um6
        // space 3
        // p2c3
        p2c3.l = p2c4
        p2c3.ul = p2s1
        p2c3.t = p2h2
        p2c3.ur = p2h1
        p2c3.r = p2c2
        p2c3.lr = um7
        p2c3.b = um6
        p2c3.ll = um5
        // space 4
        // p2c4
        p2c4.l = p2r1
        p2c4.ul = p2s2
        p2c4.t = p2s1
        p2c4.ur = p2h2
        p2c4.r = p2c3
        p2c4.lr = um6
        p2c4.b = um5
        p2c4.ll = um4
        // space 5
        // p2r1
        p2r1.l = p2r2
        p2r1.ul = p2s3
        p2r1.t = p2s2
        p2r1.ur = p2s1
        p2r1.r = p2c4
        p2r1.lr = um5
        p2r1.b = um4
        p2r1.ll = um3
        // space 6
        // p2r2
        p2r2.l = p2r3
        p2r2.t = p2s3
        p2r2.ur = p2s2
        p2r2.r = p2r1
        p2r2.lr = um4
        p2r2.b = um3
        p2r2.ll = um2
        // space 7
        // p2r3
        p2r3.ur = p2s3
        p2r3.r = p2r2
        p2r3.lr = um3
        p2r3.b = um2
        p2r3.ll = um1
        
        setupPos()
    }
    
    func setupPos() {
        um8.position = CGPoint(x: 313.05413818359375  + 10, y: 140.29449462890625)
        um9.position = CGPoint(x: 402.3926696777344   + 10, y: 141.3130645751953)
        um3.position = CGPoint(x: -135.16650390625    + 10, y: 140.2939453125)
        um5.position = CGPoint(x: 42.30303192138672   + 10, y: 140.0267791748047)
        um6.position = CGPoint(x: 132.32595825195312  + 10, y: 140.0272674560547)
        um7.position = CGPoint(x: 222.72906494140625  + 10, y: 140.29391479492188)
        um1.position = CGPoint(x: -314.2081604003906  + 10, y: 140.2932891845703)
        um4.position = CGPoint(x: -46.355125427246094 + 10, y: 140.02728271484375)
        um2.position = CGPoint(x: -224.045654296875   + 10, y: 140.29405212402344)
        
        m11.position = CGPoint(x: 491.8421936035156  + 10, y: 15.444347381591797)
        m9.position = CGPoint(x: 312.3088073730469   + 10, y: 15.443714141845703)
        m4.position = CGPoint(x: -134.46609497070312 + 10, y: 15.443805694580078)
        m8.position = CGPoint(x: 223.42947387695312  + 10, y: 15.443805694580078)
        m2.position = CGPoint(x: -314.1294860839844  + 10, y: 14.42464828491211)
        m7.position = CGPoint(x: 134.61801147460938  + 10, y: 15.710468292236328)
        m1.position = CGPoint(x: -404.2592468261719  + 10, y: 14.424560546875)
        m3.position = CGPoint(x: -224.7911376953125  + 10, y: 15.443225860595703)
        m10.position = CGPoint(x: 402.4713439941406  + 10, y: 15.44448471069336)
        m6.position = CGPoint(x: 45.959842681884766  + 10, y: 15.710956573486328)
        m5.position = CGPoint(x: -44.063079833984375 + 10, y: 15.710468292236328)
        
        lm7.position = CGPoint(x: 224.03842163085938  + 10, y: -111.322021484375)
        lm4.position = CGPoint(x: -43.45404052734375  + 10, y: -111.05535888671875)
        lm8.position = CGPoint(x: 312.91754150390625  + 10, y: -111.32211303710938)
        lm2.position = CGPoint(x: -224.1822509765625  + 10, y: -111.32260131835938)
        lm6.position = CGPoint(x: 135.22703552246094  + 10, y: -111.05535888671875)
        lm1.position = CGPoint(x: -313.5207824707031  + 10, y: -112.34117126464844)
        lm9.position = CGPoint(x: 403.0800476074219   + 10, y: -111.32133483886719)
        lm5.position = CGPoint(x: 46.56887435913086   + 10, y: -111.05487060546875)
        lm3.position = CGPoint(x: -133.85714721679688 + 10, y: -111.322021484375)

        r2.position = CGPoint(x: 224.27215576171875  + 10, y: -235.19635009765625)
        c3.position = CGPoint(x: -43.287681579589844 + 10, y: -234.92965698242188)
        r1.position = CGPoint(x: 135.46078491210938  + 10, y: -234.9296875)
        c1.position = CGPoint(x: -223.94854736328125 + 10, y: -235.19692993164062)
        c2.position = CGPoint(x: -133.6234130859375  + 10, y: -235.19635009765625)
        r3.position = CGPoint(x: 313.15106201171875  + 10, y: -235.19644165039062)
        c4.position = CGPoint(x: 46.80250549316406   + 10, y: -234.92919921875)

        s1.position = CGPoint(x: 46.66770935058594  + 10, y: -361.03448486328125)
        s3.position = CGPoint(x: 224.13739013671875 + 10, y: -361.3016357421875)
        s2.position = CGPoint(x: 135.32598876953125 + 10, y: -361.03497314453125)
        h2.position = CGPoint(x: -43.3552131652832  + 10, y: -361.03497314453125)
        h1.position = CGPoint(x: -133.7581787109375 + 10, y: -361.3016357421875)

        o.position = CGPoint(x: 134.98837280273438 + 10, y: -485.37530517578125)
        h.position = CGPoint(x: 47.797584533691406 + 10, y: -485.3748779296875)
        d.position = CGPoint(x: -42.225341796875   + 10, y: -485.3753662109375)

        k.position = CGPoint(x: 47.797393798828125     + 10, y: -615.3750610351562)
        
        p2c3.position = CGPoint(x: 133.1466064453125   + 10, y: 263.21014404296875)
        p2r2.position = CGPoint(x: -134.34585571289062 + 10, y: 263.4768371582031)
        p2c2.position = CGPoint(x: 221.88406372070312  + 10, y: 263.4753723144531)
        p2r1.position = CGPoint(x: -45.53446960449219  + 10, y: 263.2101745605469)
        p2r3.position = CGPoint(x: -223.224853515625   + 10, y: 263.4769287109375)
        p2c4.position = CGPoint(x: 43.123687744140625  + 10, y: 263.20965576171875)
        p2c1.position = CGPoint(x: 313.8748474121094   + 10, y: 263.47735595703125)
        
        p2h1.position = CGPoint(x: 222.8778533935547   + 10, y: 385.5700988769531)
        p2s2.position = CGPoint(x: -46.206298828125    + 10, y: 385.3034362792969)
        p2s1.position = CGPoint(x: 42.45185852050781   + 10, y: 385.3030090332031)
        p2s3.position = CGPoint(x: -135.01771545410156 + 10, y: 385.5701599121094)
        p2h2.position = CGPoint(x: 132.4747772216797   + 10, y: 385.3034973144531)

        p2h.position = CGPoint(x: 42.74076843261719    + 10, y: 507.9861755371094)
        p2d.position = CGPoint(x: 132.76370239257812   + 10, y: 507.9866638183594)
        p2o.position = CGPoint(x: -45.917381286621094  + 10, y: 507.9866027832031)

        p2k.position = CGPoint(x: 42.74067687988281    + 10, y: 637.9863891601562)
    }
}
