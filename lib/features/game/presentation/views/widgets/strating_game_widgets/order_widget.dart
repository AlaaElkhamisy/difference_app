import 'package:flutter/material.dart';
import 'package:playing_app/core/utilis/app_text_styles.dart';

class OrderWidget extends StatelessWidget {
  const OrderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 280, top: 4.6),
      child: Text.rich(
        TextSpan(children: [
          TextSpan(
              text: '1',
              style: TextStyle(
                fontSize: 13.5,
              )),
          TextSpan(text: 'st', style: TextStyle(fontSize: 7.2))
        ]),
        style: AppTextStyles.mainTextStyle
            .copyWith(fontSize: 10, fontWeight: FontWeight.w700),
      ),
    );
  }
}
