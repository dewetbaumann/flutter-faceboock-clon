import 'package:facebook_clon/core/app_color.dart';
import 'package:facebook_clon/presentation/widgets/make_post/fc_button_post.dart';
import 'package:flutter/material.dart';

class FcMakePost extends StatelessWidget {
  const FcMakePost();

  @override
  Widget build(BuildContext context) {
    final double _screenWidth = MediaQuery.of(context).size.width;

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
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "What's on your mind, De Wet?",
                        hintStyle: TextStyle(color: AppColor.greyColor500),
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
              children: const <Widget>[
                Expanded(
                  flex: 20,
                  child: FcButtonPost(
                    backgroundColor: AppColor.greenColor400,
                    iconColor: AppColor.greenColor500,
                    text: 'Gallery',
                    icon: Icon(
                      Icons.photo_camera_back_rounded,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                ),
                SizedBox(width: 15),
                Expanded(
                  flex: 30,
                  child: FcButtonPost(
                    backgroundColor: AppColor.blueColor300,
                    iconColor: AppColor.blueColor400,
                    text: 'Tag friends',
                    icon: Icon(
                      Icons.people,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                ),
                SizedBox(width: 15),
                Expanded(
                  flex: 15,
                  child: FcButtonPost(
                    backgroundColor: AppColor.orangeColor400,
                    iconColor: AppColor.orangeColor500,
                    text: 'Live',
                    icon: Icon(
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
