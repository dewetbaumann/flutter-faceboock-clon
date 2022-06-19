import 'package:facebook_clon/core/app/app_color.dart';
import 'package:facebook_clon/presentation/widgets/action_bar/fc_action_bar.dart';
import 'package:facebook_clon/presentation/widgets/friend_post/fc_friend_post.dart';
import 'package:facebook_clon/presentation/widgets/friends_states/fc_friends_states.dart';
import 'package:facebook_clon/presentation/widgets/make_post/fc_make_post.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.grey200,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const <Widget>[
              FcActionBar(),
              FcMakePost(),
              FcFriendsStates(),
              FcFriendPost(),
            ],
          ),
        ),
      ),
    );
  }
}
