import 'package:flutter/material.dart';
import 'package:playing_app/core/customs/custom_text_widget.dart';
import 'package:playing_app/core/utilis/app_text_styles.dart';
import 'package:playing_app/core/utilis/assets.dart';
import 'package:playing_app/features/game/presentation/views/widgets/game_View_widgets/player_number.dart';
import 'package:playing_app/features/game/presentation/views/widgets/game_View_widgets/player_picture.dart';

class PlayerPictureAndNameWidget extends StatelessWidget {
  const PlayerPictureAndNameWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(children: [
          PlayerPictureWidget(
              topPadding: 16,
              leftPadding: 6.8,
              size: 100.8,
              borderWidth: 113.02,
              borderHeight: 125.17),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 86.01),
            child: Image.asset(Assets.bottomBorderForPP),
          ),
          PlayerNumberWidget(
            topPadding: 101,
            leftPadding: 32.6,
            width: 49,
            height: 22,
          )
        ]),
        SizedBox(height: 30),
        Text("فهد طلال", style: AppTextStyles.nameTextStyle),
        SizedBox(height: 5),
        SizedBox(
          width: 69,
          height: 31.72,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: CustomTextWidget(
                  borderColor: Colors.black,
                  text: '250',
                  size: 17.2,
                ),
              ),
              Image.asset(Assets.coin2Icon)
            ],
          ),
        )
      ],
    );
  }
}
