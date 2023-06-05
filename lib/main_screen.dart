import 'package:flutter/material.dart';
import 'package:ohaomob/HomeScreen/HomeScreen.dart';
import 'package:ohaomob/Myaccount/myaccount_screen.dart';
import 'package:ohaomob/widgets/animated_bottom_bar.dart';
import 'package:ohaomob/widgets/exit_popup.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int tabIndex = 0;
  final _SCREENS = [HomeScreen(), MyAccountScreen()];
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  void updateBotNavBar(int acindex) {
    setState(() {
      tabIndex = acindex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => showExitPopup(context),
      child: Scaffold(
        bottomNavigationBar: SizedBox(
            height: 65.0,
            child: AnimatedBottomAppBar(TabsCallback: (int index) {
              updateBotNavBar(index);
            })),
        body: _SCREENS[tabIndex],
      ),
    );
  }
}
