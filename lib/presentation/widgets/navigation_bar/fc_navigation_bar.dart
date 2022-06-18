import 'package:facebook_clon/core/app_style.dart';
import 'package:facebook_clon/presentation/widgets/fc_button_rounded.dart';
import 'package:flutter/material.dart';

class FcNavigationBar extends StatelessWidget {
  const FcNavigationBar();

  @override
  Widget build(BuildContext context) {
    final _style = AppStyle();

    final double _screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: _screenWidth,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        children: <Widget>[
          Text(
            'facebook',
            style: TextStyle(
              fontSize: 30,
              color: _style.blueColor500,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Expanded(child: SizedBox()),
          FcButtonRounded(
            color: _style.greyColor500,
            icon: const Icon(Icons.search, color: Colors.white, size: 22),
          ),
          FcButtonRounded(
            color: _style.salmonColor,
            icon: const Icon(Icons.notifications, color: Colors.white, size: 18),
          ),
          FcButtonRounded(
            color: _style.lightBlueColor500,
            icon: const Icon(Icons.people, color: Colors.white, size: 18),
          ),
          FcButtonRounded(
            color: _style.blueColor500,
            icon: Image.asset('assets/images/messenger_bubble.png', width: 18),
          ),
        ],
      ),
    );
  }
}
