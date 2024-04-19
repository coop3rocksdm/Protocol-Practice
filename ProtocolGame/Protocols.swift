//
//  Protocols.swift
//  ProtocolGame
//
//  Created by Дмитро Солоп on 06.04.2024.
//

import Foundation

protocol Unit {
    var name: String { get }
    var bullets: Int { get set }
    var life: Int { get set }
}

protocol UnitMoves {
    func run() -> String?
   mutating func shoot() -> String?
}

protocol GameProtocol: Unit, UnitMoves {
    func startGame()
    func win() -> String?
}
extension GameProtocol {
    func startGame() {
        print("Let's begin THE FIREFIGHT!")
    }
    func run() -> String? {
        return "AAA!!! You win! I'm lost my honor!\n\(name) run."
    }
    func win() -> String? {
        return "\(name) win!!!"
    }
}
