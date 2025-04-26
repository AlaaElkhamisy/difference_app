import 'package:flutter/material.dart';
import 'package:playing_app/core/utilis/assets.dart';
import 'package:playing_app/features/game/presentation/views/widgets/game_View_widgets/playerPicture_and_name.dart';
import 'package:svg_flutter/svg.dart';

class Player extends StatelessWidget {
  const Player({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 104,
          ),
          child: SvgPicture.asset(Assets.p),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 22),
          child: PlayerPictureAndNameWidget(),
        )
      ],
    );
  }
}
