import 'package:facebook_clon/core/app/app_color.dart';
import 'package:facebook_clon/core/app/app_images.dart';
import 'package:facebook_clon/presentation/widgets/action_bar/fc_action_bar_button.dart';
import 'package:flutter/material.dart';

class FcActionBar extends StatelessWidget {
  const FcActionBar();

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        children: <Widget>[
          const Text(
            'facebook',
            style: TextStyle(),
          ),
          const Expanded(child: SizedBox()),
          const FcActionBarButton(
            backgroundColor: AppColor.grey500,
            icon: Icon(
              Icons.search,
              color: AppColor.white,
            ),
          ),
          const FcActionBarButton(
            backgroundColor: AppColor.salmon,
            icon: Icon(
              Icons.notifications,
              color: AppColor.white,
            ),
          ),
          const FcActionBarButton(
            backgroundColor: AppColor.lightBlue500,
            icon: Icon(
              Icons.people,
              color: AppColor.white,
            ),
          ),
          FcActionBarButton(
            backgroundColor: AppColor.blue500,
            icon: SizedBox(
              width: 20,
              height: 20,
              child: Image.asset(AppImage.messenger),
            ),
          ),
        ],
      ),
    );
  }
}
