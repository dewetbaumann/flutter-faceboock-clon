import 'package:facebook_clon/core/app/app_color.dart';
import 'package:flutter/material.dart';

class FcFriendsStatesCard extends StatelessWidget {
  const FcFriendsStatesCard({
    required this.stateUrl,
    required this.name,
    required this.profileUrl,
  });

  final String stateUrl;
  final String profileUrl;
  final String name;

  @override
  Widget build(BuildContext context) {
    const double cardWidth = 90;

    return Container(
      margin: const EdgeInsets.only(right: 15),
      padding: const EdgeInsets.only(bottom: 15),
      width: cardWidth,
      height: 175,
      child: Stack(
        children: <Widget>[
          // Estado
          Container(
            width: cardWidth,
            height: 110,
            margin: const EdgeInsets.only(bottom: 30),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              image: DecorationImage(
                image: AssetImage(stateUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Imagen de perfil
          Positioned(
            left: 0,
            right: 0,
            top: 90,
            child: Container(
              width: 40,
              height: 40,
              margin: const EdgeInsets.only(bottom: 30),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: AppColor.white,
                  width: 2,
                ),
                image: DecorationImage(
                  image: AssetImage(profileUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          // Nombre
          Positioned(
            bottom: 0,
            child: Text(name),
          ),
        ],
      ),
    );
  }
}
