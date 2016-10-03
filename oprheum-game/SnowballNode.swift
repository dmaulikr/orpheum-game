//
//  SnowballNode.swift
//
//  Copyright © 2016 Yichen Yao, Elizabeth Singer, Hadley Shapland. All rights reserved.
//

import SpriteKit

class SnowballNode: SKNode {
    let whiteColor = SKColor.whiteColor()

    var snowballNode: SKShapeNode!
    var mass: CGFloat = 6
    var mass0: CGFloat = 0 // this needs a better name

    override init() {
        super.init()

        self.name = "Snowball"
        redrawSnowball()
        unselect()
    }

    func setSnowballMass(mass: CGFloat) {
        if mass>1.6 {let mass = 1.8}
        self.mass = mass
        redrawSnowball()
    }

    func redrawSnowball() {
        self.removeAllChildren()
        let radius = mass * 10
        snowballNode = SKShapeNode(circleOfRadius: radius)
        self.physicsBody = SKPhysicsBody(circleOfRadius: radius)
        self.physicsBody?.mass = mass
        self.addChild(snowballNode)
        snowballNode.fillColor = whiteColor
    }

    func pinchBegan(scale: CGFloat) {
        mass0 = mass
    }

    func pinchChanged(scale: CGFloat) {
        setSnowballMass(mass0 * scale)
    }

    func pinchEnded(scale: CGFloat) {
        setSnowballMass(mass0 * scale)
    }

    func select() {
        snowballNode.fillColor = whiteColor
    }

    func unselect() {
        snowballNode.fillColor = Snowball.SnowballColor
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
