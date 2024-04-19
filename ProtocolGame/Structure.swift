//
//  Structure.swift
//  ProtocolGame
//
//  Created by Дмитро Солоп on 06.04.2024.
//

import Foundation

struct Cowboy: GameProtocol {
    var name: String
    var bullets: Int
    var life: Int
    init (name: String, bullets: Int, life: Int) {
        self.name = name
        self.bullets = bullets
        self.life = life
    }
    mutating func shoot() -> String? {
        if bullets != 0 && life > 1 {
            bullets -= 1
            life -= 1
            print("\(name) bullets: \(bullets),  life: \(life)")
            return "\(name) shoot!"
        } else {
            return nil
        }
    }
    
}

struct Bandit: GameProtocol {
    var name: String
    var bullets: Int
    var life: Int
    init (name: String, bullets: Int, life: Int) {
        self.name = name
        self.bullets = bullets
        self.life = life
    }
    mutating func shoot() -> String? {
        if bullets != 0 && life > 1 {
            bullets -= 1
            life -= 1
            print("\(name) bullets: \(bullets),  life: \(life)")
            return "\(name) shoot!"
        } else {
            return nil
        }
    }
}
