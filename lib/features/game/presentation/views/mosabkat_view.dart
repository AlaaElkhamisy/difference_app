import 'package:flutter/material.dart';
import 'package:playing_app/core/customs/custom_text_widget.dart';
import 'package:playing_app/core/utilis/app_Strings.dart';
import 'package:playing_app/core/utilis/assets.dart';
import 'package:playing_app/core/widgets/app_background.dart';
import 'package:playing_app/features/game/presentation/views/widgets/mosabkat_view_widgets/choosing_value_widget.dart';
import 'package:playing_app/features/game/presentation/views/widgets/mosabkat_view_widgets/players_count_optin.dart';
import 'package:playing_app/features/game/presentation/views/widgets/mosabkat_view_widgets/startBtn.dart';
import 'package:playing_app/features/game/presentation/views/widgets/mosabkat_view_widgets/time_and_wrongCount_widget.dart';

class MosabkatView extends StatelessWidget {
  const MosabkatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AppBackGround(),
          Padding(
            padding: const EdgeInsets.only(top: 78),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Align(
                      alignment: Alignment.topRight,
                      child: Image.asset(Assets.popNavIcon)),
                ),
                CustomTextWidget(
                    borderColor: Colors.black, text: AppStrings.mosabkat),
                SizedBox(height: 50),
                PlayersCountOptionsWidget(),
                SizedBox(height: 100),
                ChoosingValueWidget(),
                TimeAndWrongCountWidget(),
                StratBtn()
              ],
            ),
          )
        ],
      ),
    );
  }
}
