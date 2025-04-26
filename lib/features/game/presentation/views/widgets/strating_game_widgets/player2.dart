import 'package:flutter/material.dart';
import 'package:playing_app/features/game/presentation/views/widgets/strating_game_widgets/player_data_during_game.dart';
import 'package:playing_app/features/game/presentation/views/widgets/game_View_widgets/player_number.dart';
import 'package:playing_app/features/game/presentation/views/widgets/game_View_widgets/player_picture.dart';

class player2 extends StatelessWidget {
  const player2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Stack(children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 18),
            child: PlayerPictureWidget(
              size: 58.2,
              borderWidth: 65.19,
              borderHeight: 72.2,
              topPadding: 8.2,
              leftPadding: 3.45,
            ),
          ),
          PlayerNumberWidget(
            topPadding: 65,
            leftPadding: 26.5,
            width: 49,
            height: 22,
          )
        ]),
        Column(
          children: [
            PlayerDataDuringGame(
              crossAxisAlignment: CrossAxisAlignment.start,
              name: 'فهد طلال',
              playerId: '82156349',
            ),
            PlayerWrongCountDuringGame()
          ],
        ),
      ],
    );
  }
}
