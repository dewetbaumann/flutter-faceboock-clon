import 'package:facebook_clon/core/app_color.dart';
import 'package:facebook_clon/core/app_images.dart';
import 'package:flutter/material.dart';

class FcMakePostAction extends StatelessWidget {
  const FcMakePostAction();

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth,
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: <Widget>[
          Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImage.profile),
                fit: BoxFit.cover,
              ),
              shape: BoxShape.circle,
            ),
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "What's on your mind, De Wet?",
                  hintStyle: TextStyle(color: AppColor.grey500),
                  border: InputBorder.none,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
