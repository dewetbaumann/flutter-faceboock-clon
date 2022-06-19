import 'package:facebook_clon/core/app/app_color.dart';
import 'package:facebook_clon/core/app/app_images.dart';
import 'package:flutter/material.dart';

class FcFriendPost extends StatelessWidget {
  const FcFriendPost();

  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.only(top: 6),
      width: screen.width,
      height: 300,
      decoration: const BoxDecoration(
        color: AppColor.white,
      ),
      child: Column(
        children: [
          // Nombre y hora del post
          Container(
            margin: const EdgeInsets.only(top: 15),
            width: screen.width,
            height: 45,
            child: Row(
              children: <Widget>[
                // Foto de perfil
                Container(
                  width: 50,
                  height: 50,
                  margin: const EdgeInsets.only(left: 15),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(AppImage.profile),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                // Nombre
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Nombre',
                    style: TextStyle(),
                  ),
                ),

                // Hora del post
                const Expanded(child: SizedBox()),
                const Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Text(
                    '8m',
                    style: TextStyle(),
                  ),
                ),
              ],
            ),
          ),

          // imagen del post

          // reacciones
        ],
      ),
    );
  }
}
