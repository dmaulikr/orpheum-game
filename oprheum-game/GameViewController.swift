//
//  GameViewController.swift
//
//  Copyright © 2016 Yichen Yao, Elizabeth Singer, Hadley Shapland. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        startMenu()
    }
    
    func startMenu() {
        if let menuScene = MenuScene(fileNamed: "MenuScene") {
            let skView = self.view as! SKView
            skView.showsFPS = true
            skView.showsNodeCount = true
            
            /* Set to true to see bounding boxes */
            skView.showsPhysics = true
            
            /* Sprite Kit applies additional optimizations to improve rendering performance */
            skView.ignoresSiblingOrder = true
            
            /* Set the scale mode to scale to fit the window */
            menuScene.scaleMode = .AspectFill
            menuScene.gameViewController = self
            
            skView.presentScene(menuScene)
        }
    }

    func startSnowballGame() {
        if let snowballGameScene = SnowballScene(fileNamed: "SnowballScene") {
            // Configure the view.
            let skView = self.view as! SKView
            skView.showsFPS = true
            skView.showsNodeCount = true

            /* Set to true to see bounding boxes */
            skView.showsPhysics = true

            /* Sprite Kit applies additional optimizations to improve rendering performance */
            skView.ignoresSiblingOrder = true

            /* Set the scale mode to scale to fit the window */
            snowballGameScene.scaleMode = .AspectFill
            snowballGameScene.gameViewController = self
            
            skView.presentScene(snowballGameScene)
            //get the this menu to call the other menus and set a variable for difficulty levels
        }
    }

    
    func startLeverGameNew() {
        if let leverGameScene = LeverScene(fileNamed: "LeverScene") {
            // Configure the view.
            let skView = self.view as! SKView
            skView.showsFPS = true
            skView.showsNodeCount = true
            
            /* Set to true to see bounding boxes */
            skView.showsPhysics = true
            
            /* Sprite Kit applies additional optimizations to improve rendering performance */
            skView.ignoresSiblingOrder = true
            
            /* Set the scale mode to scale to fit the window */
            leverGameScene.scaleMode = .AspectFill
            leverGameScene.gameViewController = self
            
            skView.presentScene(leverGameScene)
            //get the this menu to call the other menus and set a variable for difficulty levels
        }
    }
    
    override func shouldAutorotate() -> Bool {
        return true
    }
        
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        if UIDevice.currentDevice().userInterfaceIdiom == .Phone {
            return .AllButUpsideDown
        } else {
            return .All
        }
    }

    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}