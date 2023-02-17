import 'package:bonfire/bonfire.dart';

import '../main.dart';

class EnemySpriteSheet {
  static Future<SpriteAnimation> get enemyIdleLeft => SpriteAnimation.load(
        'enemyidle.png',
        SpriteAnimationData.sequenced(
            amount: 4,
            stepTime: 0.15,
            textureSize: Vector2(tileSize / 2, tileSize / 2),
            texturePosition: Vector2(0, 16)),
      );

  static Future<SpriteAnimation> get enemyIdleRight => SpriteAnimation.load(
        'enemyidle.png',
        SpriteAnimationData.sequenced(
            amount: 4,
            stepTime: 0.15,
            textureSize: Vector2(tileSize / 2, tileSize / 2),
            texturePosition: Vector2(0, 48)),
      );

  static Future<SpriteAnimation> get enemyIdleTop => SpriteAnimation.load(
        'enemyidle.png',
        SpriteAnimationData.sequenced(
            amount: 4,
            stepTime: 0.15,
            textureSize: Vector2(tileSize / 2, tileSize / 2),
            texturePosition: Vector2(0, 32)),
      );

  static Future<SpriteAnimation> get enemyIdleBot => SpriteAnimation.load(
        'enemyidle.png',
        SpriteAnimationData.sequenced(
            amount: 4,
            stepTime: 0.15,
            textureSize: Vector2(tileSize / 2, tileSize / 2),
            texturePosition: Vector2(0, 0)),
      );

  static Future<SpriteAnimation> get enemyRunLeft => SpriteAnimation.load(
        'enemyrun.png',
        SpriteAnimationData.sequenced(
            amount: 4,
            stepTime: 0.15,
            textureSize: Vector2(tileSize / 2, tileSize / 2),
            texturePosition: Vector2(0, 16)),
      );

  static Future<SpriteAnimation> get enemyRunRight => SpriteAnimation.load(
        'enemyrun.png',
        SpriteAnimationData.sequenced(
            amount: 4,
            stepTime: 0.15,
            textureSize: Vector2(tileSize / 2, tileSize / 2),
            texturePosition: Vector2(0, 48)),
      );

  static Future<SpriteAnimation> get enemyRunTop => SpriteAnimation.load(
        'enemyrun.png',
        SpriteAnimationData.sequenced(
            amount: 4,
            stepTime: 0.15,
            textureSize: Vector2(tileSize / 2, tileSize / 2),
            texturePosition: Vector2(0, 32)),
      );

  static Future<SpriteAnimation> get enemyRunBot => SpriteAnimation.load(
        'enemyrun.png',
        SpriteAnimationData.sequenced(
            amount: 4,
            stepTime: 0.15,
            textureSize: Vector2(tileSize / 2, tileSize / 2),
            texturePosition: Vector2(0, 0)),
      );
}
