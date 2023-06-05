import 'package:flutter/material.dart';
import 'package:ohaomob/Signup/SignupScreen.dart';
import 'package:ohaomob/widgets/ITextInputPhone.dart';

class SignupOptionScreen extends StatelessWidget {
  const SignupOptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.clear_all))
            ],
            pinned: true,
            expandedHeight: 100.0,
            stretch: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Notification'),
              stretchModes: <StretchMode>[
                StretchMode.zoomBackground,
                StretchMode.blurBackground,
                StretchMode.fadeTitle,
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Expanded(
                child: TextInputPhone(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
