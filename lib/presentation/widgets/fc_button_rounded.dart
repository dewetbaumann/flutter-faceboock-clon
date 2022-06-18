import 'package:flutter/material.dart';

class FcButtonRounded extends StatelessWidget {
  const FcButtonRounded({required this.color, required this.icon, this.hasNotification = false});

  final bool hasNotification;
  final Widget icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 35,
      child: TextButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
          shape: MaterialStateProperty.all<OutlinedBorder>(const CircleBorder()),
        ),
        child: icon,
      ),
    );
  }
}
