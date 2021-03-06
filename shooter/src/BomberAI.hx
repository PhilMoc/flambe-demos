//
// Flambe - Rapid game development
// https://github.com/aduros/flambe/blob/master/LICENSE.txt

import flambe.Component;
import flambe.display.Sprite;
import flambe.System;

class BomberAI extends Component
{
    public function new ()
    {
    }

    override public function onUpdate (dt :Float)
    {
        var sprite = owner.get(Sprite);
        sprite.y._ += dt*50;
        if (sprite.y._ > System.stage.height) {
            owner.dispose();
        }
    }
}
