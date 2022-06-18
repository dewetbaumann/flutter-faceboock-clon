import 'package:facebook_clon/core/app_style.dart';
import 'package:facebook_clon/presentation/widgets/make_post/fc_button_post.dart';
import 'package:flutter/material.dart';

class FcMakePost extends StatelessWidget {
  const FcMakePost();

  @override
  Widget build(BuildContext context) {
    final double _screenWidth = MediaQuery.of(context).size.width;
    final _style = AppStyle();
    return Container(
      color: Colors.white,
      // padding: const EdgeInsets.symmetric(horizontal: 1),
      width: _screenWidth,
      height: 100,
      child: Column(
        children: <Widget>[
          // Foto y campo para hacer el post
          Container(
            width: _screenWidth,
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: <Widget>[
                Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/profile.jpg'),
                      fit: BoxFit.cover,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "What's on your mind, De Wet?",
                        hintStyle: TextStyle(color: _style.greyColor500),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),

          // Botonera de acciones
          SizedBox(
            width: _screenWidth,
            height: 35,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Expanded(
                  flex: 20,
                  child: FcButtonPost(
                    backgroundColor: _style.greenColor400,
                    iconColor: _style.greenColor500,
                    text: 'Gallery',
                    icon: const Icon(
                      Icons.photo_camera_back_rounded,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  flex: 30,
                  child: FcButtonPost(
                    backgroundColor: _style.blueColor300,
                    iconColor: _style.blueColor400,
                    text: 'Tag friends',
                    icon: const Icon(
                      Icons.people,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  flex: 15,
                  child: FcButtonPost(
                    backgroundColor: _style.orangeColor400,
                    iconColor: _style.orangeColor500,
                    text: 'Live',
                    icon: const Icon(
                      Icons.photo_camera_back_rounded,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
