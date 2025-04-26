import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

import 'package:playing_app/core/widgets/app_background.dart';
import 'package:playing_app/features/game/presentation/views/widgets/strating_game_widgets/reconnect_internet_widget.dart';
import 'package:playing_app/features/game/presentation/views/widgets/strating_game_widgets/starting_game_body.dart';

class StartingGameView extends StatefulWidget {
  const StartingGameView({super.key});

  @override
  State<StartingGameView> createState() => _StartingGameViewState();
}

class _StartingGameViewState extends State<StartingGameView> {
  final Connectivity _connectivity = Connectivity();
  bool _isConnected = true;

  @override
  void initState() {
    super.initState();
    _initConnectivity();
    _setupConnectivityListener();
  }

  Future<void> _initConnectivity() async {
    final List<ConnectivityResult> result =
        await _connectivity.checkConnectivity();
    _updateConnectionStatus(result);
  }

  void _setupConnectivityListener() {
    _connectivity.onConnectivityChanged.listen(_updateConnectionStatus as void
        Function(List<ConnectivityResult> event)?);
  }

  void _updateConnectionStatus(List<ConnectivityResult> result) {
    setState(() {
      _isConnected =
          result.isNotEmpty && result.first != ConnectivityResult.none;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AppBackGround(),
          Stack(children: [
            StartingGameBody(),
            if (!_isConnected) ReconnectInternetWidget()
          ])
        ],
      ),
    );
  }
}
