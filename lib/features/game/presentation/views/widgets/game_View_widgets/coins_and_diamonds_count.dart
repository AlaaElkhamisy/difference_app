import 'package:flutter/material.dart';
import 'package:playing_app/core/utilis/assets.dart';
import 'package:playing_app/features/game/presentation/views/widgets/game_View_widgets/coins_and_diamods_item.dart';
import 'package:svg_flutter/svg.dart';

class CoinsAndDiamondsCountWidget extends StatelessWidget {
  const CoinsAndDiamondsCountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CoinsAndDiamondsCountItem(child: Image.asset(Assets.coinImage)),
        Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: CoinsAndDiamondsCountItem(
                child: SvgPicture.asset(
              Assets.diamondImage,
              width: 29.55,
              height: 26.39,
            )))
      ],
    );
  }
}
