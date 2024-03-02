import 'package:flutter/material.dart';
import 'package:social_media_app/models-home/atoms/hashtags_group.dart';
import 'package:social_media_app/utils/texts.dart';

class PlayList extends StatelessWidget {
  
  final dynamic data;

  const PlayList({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 273,
      width: 166,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(data["url"]),
                fit: BoxFit.cover,
              ),
            ),
            height: 225,
            width: 166,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    CustomText(text: '${data["date"]}', color: Colors.white, fontSize: 12, fontWeight: FontWeight.w700),
                      Row(
                        children: [
                          const Image(
                            image : AssetImage('lib/assets/heart.png')
                          ),
                          const SizedBox(width: 5),
                          CustomText(text: '${data["likes"]}', color: Colors.white, fontSize: 12, fontWeight: FontWeight.w700),
                        ],
                      )
                    ],
                  )
                ]
              ),
            ),
          ),
          HashTagsGroup(data: data["hashtags"])
        ],
      ),
    );
  }
}