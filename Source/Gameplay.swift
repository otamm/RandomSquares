//
//  Gameplay.swift
//  RandomSquares
//
//  Created by Otavio Monteagudo on 9/12/15.
//  Copyright (c) 2015 Apportable. All rights reserved.
//

import UIKit;

class Gameplay: CCNode {
    
    // called as soon as scene is visible *and* the transition has ended.
    override func onEnterTransitionDidFinish() {
        super.onEnterTransitionDidFinish();
        self.userInteractionEnabled = true;
    }
    
    
    override func touchBegan(touch: CCTouch!, withEvent event: CCTouchEvent!) {
        let touchPosition = touch.locationInNode(self);
        let square = CCBReader.load("Square");
        self.addChild(square);
        square.position = touchPosition;
    }
}
