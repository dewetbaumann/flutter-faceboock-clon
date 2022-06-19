import 'package:facebook_clon/core/app/app_images.dart';
import 'package:flutter/material.dart';

class FcCardFriends extends StatelessWidget {
  const FcCardFriends();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      // height: 100,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Stack(
        children: <Widget>[
          Container(
            width: 70,
            height: 90,
            margin: const EdgeInsets.only(bottom: 30),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              image: DecorationImage(
                image: AssetImage(AppImage.profile),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Positioned(
            bottom: 0,
            child: Text('Laura Leporc'),
          ),
        ],
      ),
    );
  }
}
