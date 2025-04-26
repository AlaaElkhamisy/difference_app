import 'package:flutter/material.dart';
import 'package:playing_app/core/utilis/app_Strings.dart';
import 'package:playing_app/core/utilis/app_text_styles.dart';
import 'package:playing_app/core/utilis/assets.dart';
import 'package:stroke_text/stroke_text.dart';
import 'package:svg_flutter/svg.dart';

class GainedCoinsWidget extends StatelessWidget {
  const GainedCoinsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Padding(
        padding: const EdgeInsets.only(top: 121, left: 39),
        child: SvgPicture.asset(Assets.rectangleBehinedGain),
      ),
      Row(
        children: [
          Image.asset(Assets.coins),
          Container(
            width: 151,
            margin: EdgeInsets.only(top: 90),
            child: Row(mainAxisSize: MainAxisSize.min, children: [
              Expanded(
                flex: 1,
                child: StrokeText(
                  text: '500',
                  textStyle:
                      AppTextStyles.subTextStyle.copyWith(color: Colors.yellow),
                  strokeColor: Colors.black,
                  strokeWidth: 2,
                ),
              ),
              Expanded(
                flex: 2,
                child: StrokeText(
                  text: AppStrings.gainedCoins,
                  textStyle: AppTextStyles.subTextStyle,
                  strokeColor: Colors.black,
                  strokeWidth: 2,
                ),
              ),
            ]),
          ),
        ],
      ),
    ]);
  }
}
