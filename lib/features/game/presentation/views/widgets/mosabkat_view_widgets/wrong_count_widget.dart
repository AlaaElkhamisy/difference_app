import 'package:flutter/material.dart';
import 'package:playing_app/core/customs/custom_text_widget.dart';
import 'package:playing_app/core/utilis/app_Strings.dart';
import 'package:playing_app/features/game/presentation/views/widgets/mosabkat_view_widgets/custom_drop_down.dart';
import 'package:playing_app/features/game/presentation/views/widgets/mosabkat_view_widgets/custom_dropdwon_container.dart';
import 'package:playing_app/features/game/presentation/views/widgets/mosabkat_view_widgets/lists_for_dropDown.dart';

class WrongCountWidget extends StatelessWidget {
  const WrongCountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        CustomDropDownContainer(
          width: 57,
          height: 35,
          child: CustomDropDown(items: wrongCountItems),
        ),
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 90),
          child: CustomTextWidget(
            borderColor: Colors.black,
            text: AppStrings.wrongCount,
            size: 16,
            weight: FontWeight.w700,
          ),
        )
      ],
    );
  }
}
