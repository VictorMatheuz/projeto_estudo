import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:game_island/main.dart';
import 'package:game_island/sprite_sheets/hero_sprite_sheet.dart';

class HeroPlayer extends SimplePlayer with ObjectCollision {
  HeroPlayer(Vector2 position)
      : super(
          position: position,
          size: Vector2(tileSize, tileSize),
          animation: SimpleDirectionAnimation(
            idleRight: HeroSpriteSheet.playerIdleRight,
            idleDown: HeroSpriteSheet.playerIdleBot,
            idleLeft: HeroSpriteSheet.playerIdleLeft,
            idleUp: HeroSpriteSheet.playerIdleTop,
            runRight: HeroSpriteSheet.playerRunRight,
            runLeft: HeroSpriteSheet.playerRunLeft,
            runDown: HeroSpriteSheet.playerRunBot,
            runUp: HeroSpriteSheet.playerRunTop,
          ),
          speed: 60,
        ) {
    setupCollision(CollisionConfig(
      collisions: [
        CollisionArea.rectangle(
          size: Vector2((tileSize / 2) - 6, (tileSize / 2) - 10),
          align: Vector2(11, 18),
        )
      ],
    ));
  }
  @override
  void joystickAction(JoystickActionEvent event) {
    if ((event.id == LogicalKeyboardKey.space.keyId || event.id == 1)) {
      _addAttackAnimation();
      this.simpleAttackMelee(
        damage: 10,
        size: Vector2.all((tileSize / 2) - 5),
        sizePush: 2,
      );
    }
    super.joystickAction(event);
  }

  void _addAttackAnimation() {
    Future<SpriteAnimation> newAnimation;
    print(lastDirection);
    if (lastDirection == Direction.right) {
      newAnimation = HeroSpriteSheet.getAttackRight;
      print(newAnimation);
      animation!.playOnce(newAnimation);
    } else if (lastDirection == Direction.left) {
      newAnimation = HeroSpriteSheet.getAttackLeft;
      print(newAnimation);
      animation!.playOnce(newAnimation);
    } else if (lastDirection == Direction.down) {
      newAnimation = HeroSpriteSheet.getAttackBottom;
      print(newAnimation);
      animation!.playOnce(newAnimation);
    } else if (lastDirection == Direction.up) {
      newAnimation = HeroSpriteSheet.getAttackTop;
      print(newAnimation);
      animation!.playOnce(newAnimation);
    }
  }
}
