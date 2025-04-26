import 'package:flutter/material.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';
import 'package:playing_app/core/utilis/app_text_styles.dart';

class TimerWidget extends StatelessWidget {
  const TimerWidget({
    super.key,
    this.onEnd,
  });
  final Function()? onEnd;
  @override
  Widget build(BuildContext context) {
    return TimerCountdown(
      spacerWidth: 0,
      colonsTextStyle: AppTextStyles.mainTextStyle
          .copyWith(fontSize: 35, fontWeight: FontWeight.w700),
      timeTextStyle: AppTextStyles.mainTextStyle
          .copyWith(fontSize: 35, fontWeight: FontWeight.w700),
      enableDescriptions: false,
      format: CountDownTimerFormat.minutesSeconds,
      endTime: DateTime.now().add(
        Duration(minutes: 1),
      ),
      onEnd: onEnd,
    );
  }
}
