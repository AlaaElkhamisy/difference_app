import 'package:flutter/material.dart';
import 'package:playing_app/core/customs/custom_text_widget.dart';
import 'package:playing_app/core/utilis/assets.dart';
import 'package:playing_app/features/game/presentation/views/widgets/mosabkat_view_widgets/custom_add_remove_btn.dart';

class ButtonsAndValueContainer extends StatefulWidget {
  const ButtonsAndValueContainer({
    super.key,
  });

  @override
  State<ButtonsAndValueContainer> createState() =>
      _ButtonsAndValueContainerState();
}

class _ButtonsAndValueContainerState extends State<ButtonsAndValueContainer> {
  int value = 250;
  void incrementValue() {
    setState(() {
      value += 10; // Increment value by 10
    });
  }

  void decrementValue() {
    setState(() {
      value -= 10; // Increment value by 10
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomRemoveAndAddBtn(
          image: Assets.removeIcon,
          onTap: () {
            decrementValue();
          },
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 39.12, vertical: 2.01),
          width: 183.59,
          height: 39.12,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7.02),
              color: Colors.black.withOpacity(0.25)),
          child: Row(
            children: [
              Expanded(
                child: CustomTextWidget(
                  borderColor: Colors.black,
                  text: value.toString(),
                  size: 22.07,
                  weight: FontWeight.w700,
                ),
              ),
              Image.asset(Assets.coin2Icon)
            ],
          ),
        ),
        CustomRemoveAndAddBtn(
          image: Assets.addIcon,
          onTap: () {
            incrementValue();
          },
        )
      ],
    );
  }
}
