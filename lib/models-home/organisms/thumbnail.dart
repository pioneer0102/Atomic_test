import 'package:flutter/material.dart';
import 'package:social_media_app/models-home/atoms/edit_button.dart';
import 'package:social_media_app/models-home/atoms/more_button.dart';
import 'package:social_media_app/models-home/atoms/turn_back_button.dart';
import 'package:social_media_app/utils/texts.dart';

class Thumbnail extends StatelessWidget {
  const Thumbnail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/assets/home_bg.png'),
              fit: BoxFit.cover,
            ),
          ),
          height: 332,
          child: const Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        CustomText(text: 'Live video calls', color: Colors.white, fontSize: 22, fontWeight: FontWeight.w600),
                        CustomText(text: '100 videos | 04:29:30', color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
                      ],
                    ),
                    SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          EditButton(),
                          MoreButton()
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Image(
                      image: AssetImage('lib/assets/block.png'),
                    ),
                    CustomText(text: 'Private', color: Colors.white, fontSize: 12, fontWeight: FontWeight.w600),
                    SizedBox(width: 20),
                    Image(
                      image: AssetImage('lib/assets/eye.png'),
                    ),
                    SizedBox(width: 5),
                    CustomText(text: '5.2', color: Colors.white, fontSize: 12, fontWeight: FontWeight.w600),
                  ],
                )
              ],
            ),
          ),
        ),
        const Positioned(
          left: 16,
          top: 16,
          child: TurnBack()
        ),
      ],
    );
  }
}
