import 'package:flutter/material.dart';
import 'package:playing_app/core/customs/custom_text_widget.dart';
import 'package:playing_app/core/utilis/assets.dart';

class GameViewsAndSetting extends StatelessWidget {
  const GameViewsAndSetting({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 23, maxHeight: 26),
                  child: CustomTextWidget(
                    borderColor: Colors.black,
                    text: '10',
                    size: 21.75,
                    textColor: Color(0xffC2C5C8),
                  )),
              Image.asset(Assets.eyeIcon)
            ],
          ),
          Image.asset(Assets.setting)
        ],
      ),
    );
  }
}
