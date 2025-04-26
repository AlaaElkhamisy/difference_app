import 'package:flutter/material.dart';
import 'package:playing_app/core/utilis/app_text_styles.dart';
import 'package:stroke_text/stroke_text.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({
    super.key,
    required this.borderColor,
    required this.text,
    this.size = 24,
    this.borderWidth = 0.5,
    this.weight,
    this.textColor,
    this.shadow,
  });

  final Color borderColor;
  final Color? textColor;
  final String text;
  final double size;
  final double borderWidth;
  final FontWeight? weight;
  final List<Shadow>? shadow;

  @override
  Widget build(BuildContext context) {
    return StrokeText(
      text: text,
      textStyle: AppTextStyles.mainTextStyle.copyWith(
          fontSize: size,
          fontWeight: weight,
          color: textColor,
          shadows: shadow),
      strokeWidth: borderWidth,
      strokeColor: Colors.black,
      textAlign: TextAlign.center,
    );
  }
}
