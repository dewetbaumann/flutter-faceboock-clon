import 'package:facebook_clon/presentation/widgets/fc_button_rounded.dart';
import 'package:flutter/material.dart';

class FcButtonPost extends StatelessWidget {
  const FcButtonPost({
    required this.text,
    required this.icon,
    required this.backgroundColor,
    required this.iconColor,
  });

  final Color backgroundColor;
  final Color iconColor;
  final String text;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        // width: 125,
        height: 30,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: const BorderRadius.all(Radius.circular(100)),
        ),
        child: Row(
          children: <Widget>[
            FcButtonRounded(
              color: iconColor,
              icon: icon,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Text(
                  text,
                  style: TextStyle(
                    color: iconColor,
                    fontWeight: FontWeight.w900,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
