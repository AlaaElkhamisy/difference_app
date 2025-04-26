import 'package:flutter/material.dart';
import 'package:playing_app/core/utilis/app_text_styles.dart';
import 'package:playing_app/core/utilis/assets.dart';
import 'package:playing_app/features/game/presentation/views/widgets/game_View_widgets/player_number.dart';
import 'package:playing_app/features/game/presentation/views/widgets/game_View_widgets/player_picture.dart';
import 'package:playing_app/features/game/presentation/views/widgets/strating_game_widgets/order_widget.dart';
import 'package:playing_app/features/game/presentation/views/widgets/strating_game_widgets/player_data_during_game.dart';
import 'package:svg_flutter/svg.dart';

class PlayerOrderContainer extends StatelessWidget {
  const PlayerOrderContainer({
    super.key,
    required this.width,
    required this.height,
  });
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      //margin: EdgeInsets.only(top: 100),
      padding: EdgeInsets.symmetric(horizontal: 15.85),
      decoration: _customDecoration(),
      child: Stack(children: [
        Row(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            PlayerWrongCountDuringGame(
              wrongCountColor: Colors.black,
              borderWidth: 0,
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                PlayerDataDuringGame(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  name: "فهد طلال",
                  playerId: "82156349",
                  textColor: Colors.black,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  spacing: 5,
                  children: [
                    Text(
                      '2,000',
                      style: AppTextStyles.nameTextStyle
                          .copyWith(color: Colors.black),
                    ),
                    SvgPicture.asset(Assets.winnerCoinIcon)
                  ],
                )
              ],
            ),
            Stack(children: [
              PlayerPictureWidget(
                borderHeight: 50.08,
                borderWidth: 45.22,
                topPadding: 5.53,
                leftPadding: 2.37,
                size: 40.19,
              ),
              PlayerNumberWidget(
                topPadding: 38,
                leftPadding: 7.31,
                width: 30.56,
                height: 13.72,
                fontSize: 8.73,
              )
            ]),
            SvgPicture.asset(Assets.firstPlayerAward),
          ],
        ),
        OrderWidget(),
      ]),
    );
  }

  BoxDecoration _customDecoration() {
    return BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Color(0xff404F7E).withOpacity(0.39),
              blurRadius: 6.38,
              spreadRadius: 0,
              blurStyle: BlurStyle.inner,
              offset: Offset(0, 0)),
          BoxShadow(
              color: Colors.black.withOpacity(0.51),
              blurRadius: 14.48,
              spreadRadius: 0,
              offset: Offset(0, 0))
        ],
        borderRadius: BorderRadius.circular(5.04),
        gradient: LinearGradient(
            colors: [Color(0xffFAE9D5), Color(0xffE4DFD5)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter));
  }
}
