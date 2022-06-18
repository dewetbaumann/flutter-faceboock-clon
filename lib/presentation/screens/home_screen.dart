import 'package:facebook_clon/core/app_color.dart';
import 'package:facebook_clon/presentation/widgets/action_bar/fc_action_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.greyColor200,
      body: SafeArea(
        child: Column(
          children: const <Widget>[
            FcActionBar(),
          ],
        ),
      ),
    );
  }
}
