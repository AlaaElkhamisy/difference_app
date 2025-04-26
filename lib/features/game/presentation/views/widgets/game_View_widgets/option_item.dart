import 'package:flutter/material.dart';
import 'package:playing_app/core/utilis/app_text_styles.dart';

class OptionItem extends StatelessWidget {
  const OptionItem({
    super.key,
    required this.borderColor,
    required this.colors,
    required this.image,
    required this.text,
  });
  final Color borderColor;
  final List<Color> colors;
  final String image, text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 135,
      decoration: BoxDecoration(
        color: borderColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Container(
        width: 130,
        height: 129,
        margin: EdgeInsets.only(left: 5, bottom: 5, right: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            gradient: LinearGradient(colors: colors)),
        child: Column(
          children: [
            Image.asset(image),
            Text(text,
                style: AppTextStyles.mainTextStyle.copyWith(fontSize: 15))
          ],
        ),
      ),
    );
  }
}
