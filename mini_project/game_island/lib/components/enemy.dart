import 'package:bonfire/bonfire.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game_island/components/player.dart';
import 'package:game_island/main.dart';

import '../sprite_sheets/enemy_sprite_sheet.dart';

class EnemyT extends SimpleEnemy with ObjectCollision, UseBarLife {
  EnemyT(Vector2 position)
      : super(
          position: position,
          size: Vector2(
            tileSize / 2,
            tileSize / 2,
          ),
          animation: SimpleDirectionAnimation(
            idleRight: EnemySpriteSheet.enemyIdleRight,
            idleDown: EnemySpriteSheet.enemyIdleBot,
            idleLeft: EnemySpriteSheet.enemyIdleLeft,
            idleUp: EnemySpriteSheet.enemyIdleTop,
            runRight: EnemySpriteSheet.enemyRunRight,
            runLeft: EnemySpriteSheet.enemyRunLeft,
            runDown: EnemySpriteSheet.enemyRunBot,
            runUp: EnemySpriteSheet.enemyRunTop,
          ),
          speed: 50,
        ) {
    setupCollision(CollisionConfig(
      collisions: [
        CollisionArea.rectangle(
          size: Vector2(tileSize / 2, tileSize / 2),
          align: Vector2(0, 0),
        )
      ],
    ));
  }

  @override
  void setupBarLife(
      {Vector2? size,
      Color? backgroundColor,
      Color? borderColor,
      double borderWidth = 2,
      double margin = 4,
      List<Color>? colors,
      BorderRadius? borderRadius,
      BarLifePorition barLifePosition = BarLifePorition.top,
      Vector2? offset,
      Vector2? textOffset,
      TextStyle? textStyle,
      bool showLifeText = true,
      BarLifeTextBuilder? barLifetextBuilder}) {
    // TODO: implement setupBarLife
    super.setupBarLife(
      size: Vector2(tileSize * 1.5, tileSize / 5),
      borderColor: Colors.white.withOpacity(0.5),
      borderWidth: tileSize / 5,
      margin: 0,
      borderRadius: BorderRadius.circular(2),
      barLifePosition: BarLifePorition.bottom,
      offset: Vector2(0, tileSize * -0.7),
      showLifeText: true,
    );
  }

  @override
  void update(double dt) {
    seeAndMoveToPlayer(
      closePlayer: (Player) {},
      radiusVision: tileSize * 2,
      margin: 4,
    );
    super.update(dt);
  }

  @override
  void die() {
    removeFromParent();
    super.die();
  }
}
