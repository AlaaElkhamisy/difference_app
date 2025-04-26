import 'package:flutter/material.dart';
import 'package:playing_app/core/customs/custom_text_widget.dart';
import 'package:playing_app/core/utilis/app_Strings.dart';
import 'package:playing_app/core/utilis/app_text_styles.dart';

class PlayerDataDuringGame extends StatelessWidget {
  const PlayerDataDuringGame({
    super.key,
    required this.crossAxisAlignment,
    required this.name,
    required this.playerId,
    this.textColor,
  });
  final CrossAxisAlignment crossAxisAlignment;
  final String name;
  final String playerId;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: crossAxisAlignment, children: [
      Text(name,
          style: AppTextStyles.nameTextStyle
              .copyWith(fontSize: 12, color: textColor)),
      Text.rich(
        TextSpan(children: [TextSpan(text: 'ID : '), TextSpan(text: playerId)]),
        style: AppTextStyles.nameTextStyle.copyWith(
            fontSize: 10, fontWeight: FontWeight.normal, color: textColor),
      ),
    ]);
  }
}

class PlayerWrongCountDuringGame extends StatelessWidget {
  const PlayerWrongCountDuringGame({
    super.key,
    this.wrongCountColor,
    this.borderWidth,
  });
  final Color? wrongCountColor;
  final double? borderWidth;
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5,
      mainAxisSize: MainAxisSize.min,
      children: [
        ConstrainedBox(
          constraints: BoxConstraints.expand(width: 9, height: 16),
          child: CustomTextWidget(
            borderWidth: borderWidth ?? 0.4,
            borderColor: Color(0xff3B3B3B),
            text: "0",
            size: 10,
            textColor: Color(0xffFFD400),
          ),
        ),
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 60),
          child: CustomTextWidget(
            borderWidth: 0.4,
            borderColor: Color(0xff3B3B3B),
            text: AppStrings.wrongCount,
            size: 10,
            textColor: wrongCountColor ?? Color(0xffFFD400),
          ),
        ),
      ],
    );
  }
}
