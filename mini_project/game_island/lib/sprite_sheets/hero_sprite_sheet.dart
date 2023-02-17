import 'package:bonfire/bonfire.dart';
import 'package:game_island/components/player.dart';
import 'package:game_island/main.dart';

class HeroSpriteSheet {
  static Future<SpriteAnimation> get playerIdleLeft => SpriteAnimation.load(
        'heroidle.png',
        SpriteAnimationData.sequenced(
            amount: 4,
            stepTime: 0.15,
            textureSize: Vector2(tileSize, tileSize),
            texturePosition: Vector2(0, 32)),
      );

  static Future<SpriteAnimation> get playerIdleRight => SpriteAnimation.load(
        'heroidle.png',
        SpriteAnimationData.sequenced(
            amount: 4,
            stepTime: 0.15,
            textureSize: Vector2(tileSize, tileSize),
            texturePosition: Vector2(0, 96)),
      );

  static Future<SpriteAnimation> get playerIdleTop => SpriteAnimation.load(
        'heroidle.png',
        SpriteAnimationData.sequenced(
            amount: 4,
            stepTime: 0.15,
            textureSize: Vector2(tileSize, tileSize),
            texturePosition: Vector2(0, 64)),
      );

  static Future<SpriteAnimation> get playerIdleBot => SpriteAnimation.load(
        'heroidle.png',
        SpriteAnimationData.sequenced(
            amount: 4,
            stepTime: 0.15,
            textureSize: Vector2(tileSize, tileSize),
            texturePosition: Vector2(0, 0)),
      );

  static Future<SpriteAnimation> get playerRunLeft => SpriteAnimation.load(
        'herowalk.png',
        SpriteAnimationData.sequenced(
            amount: 4,
            stepTime: 0.15,
            textureSize: Vector2(tileSize, tileSize),
            texturePosition: Vector2(0, 32)),
      );

  static Future<SpriteAnimation> get playerRunRight => SpriteAnimation.load(
        'herowalk.png',
        SpriteAnimationData.sequenced(
            amount: 4,
            stepTime: 0.15,
            textureSize: Vector2(tileSize, tileSize),
            texturePosition: Vector2(0, 96)),
      );

  static Future<SpriteAnimation> get playerRunTop => SpriteAnimation.load(
        'herowalk.png',
        SpriteAnimationData.sequenced(
            amount: 4,
            stepTime: 0.15,
            textureSize: Vector2(tileSize, tileSize),
            texturePosition: Vector2(0, 64)),
      );

  static Future<SpriteAnimation> get playerRunBot => SpriteAnimation.load(
        'herowalk.png',
        SpriteAnimationData.sequenced(
            amount: 4,
            stepTime: 0.15,
            textureSize: Vector2(tileSize, tileSize),
            texturePosition: Vector2(0, 0)),
      );

  static Future<SpriteAnimation> get getAttackBottom => SpriteAnimation.load(
        'herosword.png',
        SpriteAnimationData.sequenced(
            amount: 4,
            stepTime: 0.15,
            textureSize: Vector2(tileSize, tileSize),
            texturePosition: Vector2(0, 0)),
      );

  static Future<SpriteAnimation> get getAttackLeft => SpriteAnimation.load(
        'herosword.png',
        SpriteAnimationData.sequenced(
            amount: 4,
            stepTime: 0.15,
            textureSize: Vector2(tileSize, tileSize),
            texturePosition: Vector2(0, 32)),
      );

  static Future<SpriteAnimation> get getAttackTop => SpriteAnimation.load(
        'herosword.png',
        SpriteAnimationData.sequenced(
            amount: 4,
            stepTime: 0.15,
            textureSize: Vector2(tileSize, tileSize),
            texturePosition: Vector2(0, 64)),
      );

  static Future<SpriteAnimation> get getAttackRight => SpriteAnimation.load(
        'herosword.png',
        SpriteAnimationData.sequenced(
            amount: 4,
            stepTime: 0.15,
            textureSize: Vector2(tileSize, tileSize),
            texturePosition: Vector2(0, 96)),
      );
}
