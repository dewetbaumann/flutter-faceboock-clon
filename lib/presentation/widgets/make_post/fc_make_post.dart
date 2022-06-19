import 'package:facebook_clon/presentation/widgets/make_post/fc_make_post_action.dart';
import 'package:facebook_clon/presentation/widgets/make_post/tool_bar/fc_make_post_toolbar.dart';
import 'package:flutter/material.dart';

class FcMakePost extends StatelessWidget {
  const FcMakePost();

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.white,
      width: screenWidth,
      height: 100,
      child: Column(
        children: const <Widget>[
          // Foto y campo para hacer el post
          FcMakePostAction(),

          // Botonera de acciones
          FcMakePostToolBar()
        ],
      ),
    );
  }
}
