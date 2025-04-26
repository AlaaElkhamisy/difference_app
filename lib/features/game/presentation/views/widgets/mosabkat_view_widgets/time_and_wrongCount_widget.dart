import 'package:flutter/material.dart';
import 'package:playing_app/features/game/presentation/views/widgets/mosabkat_view_widgets/time_widget.dart';
import 'package:playing_app/features/game/presentation/views/widgets/mosabkat_view_widgets/wrong_count_widget.dart';

class TimeAndWrongCountWidget extends StatelessWidget {
  const TimeAndWrongCountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 80),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [TimeWidget(), WrongCountWidget()],
      ),
    );
  }
}
