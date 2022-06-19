import 'package:facebook_clon/core/app/app_color.dart';
import 'package:facebook_clon/presentation/widgets/make_post/tool_bar/fc_toolbar_button.dart';
import 'package:flutter/material.dart';

class FcMakePostToolBar extends StatelessWidget {
  const FcMakePostToolBar();

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      width: screenWidth,
      height: 35,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const <Widget>[
          Expanded(
            flex: 20,
            child: FcMakePostButton(
              backgroundColor: AppColor.green400,
              iconColor: AppColor.green500,
              text: 'Gallery',
              icon: Icon(
                Icons.photo_camera_back_rounded,
                color: Colors.white,
                size: 15,
              ),
            ),
          ),
          SizedBox(width: 15),
          Expanded(
            flex: 30,
            child: FcMakePostButton(
              backgroundColor: AppColor.blue300,
              iconColor: AppColor.blue400,
              text: 'Tag friends',
              icon: Icon(
                Icons.people,
                color: Colors.white,
                size: 15,
              ),
            ),
          ),
          SizedBox(width: 15),
          Expanded(
            flex: 15,
            child: FcMakePostButton(
              backgroundColor: AppColor.orange400,
              iconColor: AppColor.orange500,
              text: 'Live',
              icon: Icon(
                Icons.photo_camera_back_rounded,
                color: Colors.white,
                size: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
