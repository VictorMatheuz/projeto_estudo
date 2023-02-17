import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:game_island/main.dart';
import 'package:game_island/components/player.dart';
import 'package:game_island/components/enemy.dart';

class Game extends StatelessWidget {
  const Game({super.key});

  @override
  Widget build(BuildContext context) {
    return BonfireWidget(
      joystick: Joystick(
        keyboardConfig: KeyboardConfig(
          enable: true,
          acceptedKeys: [LogicalKeyboardKey.space],
        ),
      ),
      map: WorldMapByTiled(
        'map/map.json',
        objectsBuilder: {'enemy': (properties) => EnemyT(properties.position)},
      ),
      player: HeroPlayer(Vector2(tileSize, tileSize)),
      showCollisionArea: true,
      cameraConfig: CameraConfig(
          moveOnlyMapArea: true,
          zoom: 2,
          sizeMovementWindow: Vector2(
            tileSize * 3,
            tileSize * 3,
          )),
    );
  }
}
