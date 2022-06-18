import 'package:facebook_clon/core/app_color.dart';
import 'package:facebook_clon/presentation/widgets/action_bar/fc_action_bar_button.dart';
import 'package:flutter/material.dart';

class FcActionBar extends StatelessWidget {
  const FcActionBar();

  @override
  Widget build(BuildContext context) {
    final double _screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: _screenWidth,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        children: const <Widget>[
          Text(
            'facebook',
            style: TextStyle(),
          ),
          Expanded(child: SizedBox()),
          FcActionBarButton(
            color: AppColor.greyColor500,
            icon: Icons.search,
          ),
          FcActionBarButton(
            color: AppColor.salmonColor,
            icon: Icons.notifications,
          ),
          FcActionBarButton(
            color: AppColor.lightBlueColor500,
            icon: Icons.people,
          ),
          FcActionBarButton(
            color: AppColor.blueColor500,
            icon: Icons.message,
          ),
        ],
      ),
    );
  }
}
