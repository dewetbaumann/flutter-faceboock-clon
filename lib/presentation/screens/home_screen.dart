import 'package:facebook_clon/core/app_style.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final double _screenWidth = MediaQuery.of(context).size.width;
    // final double _screenHeight = MediaQuery.of(context).size.height;
    final _style = AppStyle();

    return Scaffold(
      backgroundColor: _style.greyColor200,
      body: SafeArea(
        child: Column(
          children: const <Widget>[
            FcNavigationBar(),
          ],
        ),
      ),
    );
  }
}

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
          const Text(
            'facebook',
            style: TextStyle(),
          ),
          const Expanded(child: SizedBox()),
          FcButtonTopNavBar(color: _style.greyColor500, icon: Icons.search),
          FcButtonTopNavBar(color: _style.salmonColor, icon: Icons.notifications),
          FcButtonTopNavBar(color: _style.lightBlueColor500, icon: Icons.people),
          FcButtonTopNavBar(color: _style.blueColor500, icon: Icons.message)
        ],
      ),
    );
  }
}

class FcButtonTopNavBar extends StatelessWidget {
  const FcButtonTopNavBar({required this.color, required this.icon});
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
