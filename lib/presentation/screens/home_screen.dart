import 'package:facebook_clon/core/app_color.dart';
import 'package:facebook_clon/presentation/widgets/action_bar/fc_action_bar.dart';
import 'package:facebook_clon/presentation/widgets/fc_card_friend.dart';
import 'package:facebook_clon/presentation/widgets/make_post/fc_make_post.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen();

  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColor.grey200,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            const FcActionBar(),
            const FcMakePost(),
            Container(
              width: screen.width,
              height: 130,
              color: Colors.grey,
              padding: const EdgeInsets.all(5),
              child: PageView(
                children: <Widget>[
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.red,
                  ),
                  // Container()
                  // FcCardFriends(),
                  // FcCardFriends(),
                  // FcCardFriends(),
                  // FcCardFriends(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
