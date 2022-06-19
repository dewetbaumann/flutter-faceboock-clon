import 'package:flutter/material.dart';

class FcActionBarButton extends StatelessWidget {
  const FcActionBarButton({required this.backgroundColor, required this.icon});
  final Widget icon;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
        shape: MaterialStateProperty.all<OutlinedBorder>(const CircleBorder()),
      ),
      child: icon,
    );
  }
}
