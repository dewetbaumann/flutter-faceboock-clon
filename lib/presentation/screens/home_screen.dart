import 'package:facebook_clon/core/app_style.dart';
import 'package:facebook_clon/presentation/widgets/fc_card_friend.dart';
import 'package:facebook_clon/presentation/widgets/make_post/fc_make_post.dart';
import 'package:facebook_clon/presentation/widgets/navigation_bar/fc_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _style = AppStyle();

    return Scaffold(
      backgroundColor: _style.greyColor200,
      body: SafeArea(
        child: Column(
          children: const <Widget>[
            FcNavigationBar(),
            FcMakePost(),
            FcCardFriends(),
          ],
        ),
      ),
    );
  }
}
