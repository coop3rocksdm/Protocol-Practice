//
//  ViewController.swift
//  ProtocolGame
//
//  Created by Дмитро Солоп on 06.04.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        func playGame() {
            var cowboy = Cowboy(name: "John Marlboro", bullets: Int.random(in: 0...6), life: Int.random(in: 3...5))
            var bandit = Bandit(name: "Jack Raven", bullets: Int.random(in: 1...6), life: Int.random(in: 1...5))
            
            cowboy.startGame()
            bandit.startGame()
            
            var isGameOver = false
            
            while !isGameOver {
                if let cowboyAction = cowboy.shoot() {
                    print(cowboyAction)
                } else {
                    print("\(cowboy.name) can't shoot anymore!")
                    print(bandit.win()!)
                    print(cowboy.run()!)
                    isGameOver = true
                    break
                }
                
                if let banditAction = bandit.shoot() {
                    print(banditAction)
                } else {
                    print("\(bandit.name) can't shoot anymore!")
                    print(cowboy.win()!)
                    print(bandit.run()!)
                    isGameOver = true
                    break
                }
                
                if let cowboyMove = cowboy.run() {
                    if cowboy.life < 0 || cowboy.bullets <= 0 {
                        print(bandit.win()!)
                        print(cowboyMove)
                        isGameOver = true
                        break
                    }
                }
                
                if let banditMove = bandit.run() {
                    if bandit.life < 0 || bandit.bullets <= 0 {
                        print(cowboy.win()!)
                        print(banditMove)
                        isGameOver = true
                        break
                    }
                }
            }
        }

        playGame()
    }


}

