import 'package:flutter/material.dart';
import 'package:social_media_app/common/organisms/tab_bar.dart';
import 'package:social_media_app/utils/texts.dart';

class CreatePlaylist extends StatelessWidget {
  const CreatePlaylist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF3F224D),
            Color(0xFF110417),
          ],
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),  
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: Colors.white,
            width: 70,
            height: 5,
            margin: const EdgeInsets.all(8),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                child : const CustomText(text: 'Cancel', color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
              ),
              TextButton(
                onPressed: () {},
                child : const CustomText(text: 'Create New Playlist', color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
              ),
              TextButton(
                onPressed: () {},
                child : const CustomText(text: 'Save', color: Color(0xFFDF5BFF), fontSize: 14, fontWeight: FontWeight.w600),
              )
            ],
          ),
          const CustomTabBar()
        ],
      ),
    );
  }
}
