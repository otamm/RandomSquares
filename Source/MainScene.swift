import Foundation

class MainScene: CCNode {
    
    weak var startGameBtn:CCButton!;
    
    /* button methods */
    
    func startGame() {
        let gameplayScene = CCBReader.loadAsScene("Gameplay");
        let transition = CCTransition(fadeWithDuration: 1.0);
        CCDirector.sharedDirector().presentScene(gameplayScene, withTransition
            : transition);
    }
}
