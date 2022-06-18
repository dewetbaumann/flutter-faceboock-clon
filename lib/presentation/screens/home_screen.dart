import 'package:facebook_clon/core/app_color.dart';
import 'package:facebook_clon/presentation/widgets/action_bar/fc_action_bar.dart';
import 'package:facebook_clon/presentation/widgets/fc_card_friend.dart';
import 'package:facebook_clon/presentation/widgets/make_post/fc_make_post.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.greyColor200,
      body: SafeArea(
        child: Column(
          children: const <Widget>[
            FcActionBar(),
            FcMakePost(),
            FcCardFriends(),
          ],
        ),
      ),
    );
  }
}
