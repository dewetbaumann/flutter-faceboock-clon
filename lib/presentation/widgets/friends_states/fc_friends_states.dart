import 'package:facebook_clon/core/app/app_color.dart';
import 'package:facebook_clon/core/app/app_images.dart';
import 'package:facebook_clon/presentation/widgets/friends_states/fc_friends_states_card.dart';
import 'package:flutter/material.dart';

class FcFriendsStates extends StatelessWidget {
  const FcFriendsStates();

  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.of(context).size;
    return Container(
      width: screen.width,
      height: 175,
      color: AppColor.white,
      // padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: const <Widget>[
              FcFriendsStatesCard(
                name: 'Juan Chota larga',
                stateUrl: AppImage.profile,
                profileUrl: AppImage.profile,
              ),
              FcFriendsStatesCard(
                name: 'Juan Chota larga',
                stateUrl: AppImage.profile,
                profileUrl: AppImage.profile,
              ),
              FcFriendsStatesCard(
                name: 'Juan Chota larga',
                stateUrl: AppImage.profile,
                profileUrl: AppImage.profile,
              ),
              FcFriendsStatesCard(
                name: 'Juan Chota larga',
                stateUrl: AppImage.profile,
                profileUrl: AppImage.profile,
              ),
              FcFriendsStatesCard(
                name: 'Juan Chota larga',
                stateUrl: AppImage.profile,
                profileUrl: AppImage.profile,
              ),
              FcFriendsStatesCard(
                name: 'Juan Chota larga',
                stateUrl: AppImage.profile,
                profileUrl: AppImage.profile,
              ),
              FcFriendsStatesCard(
                name: 'Juan Chota larga',
                stateUrl: AppImage.profile,
                profileUrl: AppImage.profile,
              ),
              FcFriendsStatesCard(
                name: 'Juan Chota larga',
                stateUrl: AppImage.profile,
                profileUrl: AppImage.profile,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
