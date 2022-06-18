import 'package:flutter/material.dart';

class FcActionBarButton extends StatelessWidget {
  const FcActionBarButton({required this.color, required this.icon});
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(color),
        shape: MaterialStateProperty.all<OutlinedBorder>(const CircleBorder()),
      ),
      child: Icon(icon, color: Colors.white),
    );
  }
}
