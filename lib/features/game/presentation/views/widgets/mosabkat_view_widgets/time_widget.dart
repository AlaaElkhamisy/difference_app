import 'package:flutter/material.dart';
import 'package:playing_app/core/customs/custom_text_widget.dart';
import 'package:playing_app/core/utilis/app_Strings.dart';
import 'package:playing_app/features/game/presentation/views/widgets/mosabkat_view_widgets/custom_drop_down.dart';
import 'package:playing_app/features/game/presentation/views/widgets/mosabkat_view_widgets/custom_dropdwon_container.dart';
import 'package:playing_app/features/game/presentation/views/widgets/mosabkat_view_widgets/lists_for_dropDown.dart';

class TimeWidget extends StatelessWidget {
  const TimeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        CustomDropDownContainer(
          width: 96,
          height: 35,
          child: CustomDropDown(items: timeItems),
        ),
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 45),
          child: CustomTextWidget(
            borderColor: Colors.black,
            text: AppStrings.time,
            size: 16,
            weight: FontWeight.w700,
          ),
        )
      ],
    );
  }
}
