import 'package:flutter/material.dart';
import 'package:playing_app/features/home/presentation/views/widgets/home_nav_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: HomeNavBarWidget());
  }
}
