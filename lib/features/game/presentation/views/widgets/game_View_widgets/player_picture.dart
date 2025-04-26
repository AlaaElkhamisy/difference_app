import 'package:flutter/material.dart';
import 'package:playing_app/core/utilis/assets.dart';
import 'package:svg_flutter/svg.dart';

class PlayerPictureWidget extends StatelessWidget {
  const PlayerPictureWidget({
    super.key,
    required this.size,
    this.borderWidth,
    this.borderHeight,
    this.topPadding,
    this.leftPadding,
  });
  final double size;
  final double? borderWidth;
  final double? borderHeight;
  final double? topPadding;
  final double? leftPadding;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: size,
        height: size,
        margin: EdgeInsets.only(top: topPadding!, left: leftPadding!),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/playerPicture.jpg"),
              fit: BoxFit.fill),
          shape: BoxShape.circle,
        ),
        // child: Image.asset(Assets.playerPicture, width: size, height: size),
      ),
      SvgPicture.asset(Assets.pictureBorder,
          width: borderWidth, height: borderHeight),
    ]);
  }
}
