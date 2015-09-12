//
//  Square.swift
//  RandomSquares
//
//  Created by Otavio Monteagudo on 9/12/15.
//  Copyright (c) 2015 Apportable. All rights reserved.
//

import UIKit;

class Square: CCNode {
    
    weak var colorNode:CCNodeColor!;
    
    /* cocos2d methods */
    
    override func onEnter() {
        super.onEnter();
        
        // adds a random color just before the Square instance becomes visible in a scene.
        let red = Float(arc4random_uniform(256)) / 255.0;
        let green = Float(arc4random_uniform(256)) / 255.0;
        let blue = Float(arc4random_uniform(256)) / 255.0;
        self.colorNode.color = CCColor(red: red, green: green, blue: blue);
        
        // makes the square rotate ad infinitum once added to a scene
        let rotate = CCActionRotateBy(duration: 2.0, angle: 360.0);
        let repeatRotation = CCActionRepeatForever(action: rotate);
        self.runAction(repeatRotation);
    }
    
}
