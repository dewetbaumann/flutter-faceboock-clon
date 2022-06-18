import 'package:flutter/material.dart';

class FcCardFriends extends StatelessWidget {
  const FcCardFriends({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
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
                image: AssetImage('assets/images/background.jpg'),
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
