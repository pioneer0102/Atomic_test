import 'package:flutter/material.dart';
import 'package:social_media_app/common/molecules/continue_button.dart';
import 'package:social_media_app/common/molecules/play_list_item.dart';
import 'package:social_media_app/utils/texts.dart';

class TabContent extends StatefulWidget {
  const TabContent({Key? key}) : super(key: key);

  @override
  _TabContentState createState() => _TabContentState();
}

class _TabContentState extends State<TabContent> {

  List<dynamic> contentData = [
    {
      "descripcion": "uno",
      "url" : 'lib/assets/content_image_01.png',
      "title" : 'Cooking mama',
      "hashtag" : "#pastaforthe win",
      "time" : "18 mins",
      "isCheck": false
    },
    {
      "descripcion": "dos",
      "url" : 'lib/assets/content_image_03.png',
      "title" : 'Magazine',
      "hashtag" : "#voguemagazine",
      "time" : "14 mins",
      "isCheck": false
    },
    {
      "descripcion": "tres",
      "url" : 'lib/assets/content_image_02.png',
      "title" : 'Social media',
      "hashtag" : "#socialmedia",
      "time" : "25 mins",
      "isCheck": false
    },
    {
      "descripcion": "cuatr",
      "url" : 'lib/assets/content_image_04.png',
      "title" : 'Mi Play',
      "hashtag" : "#hastag",
      "time" : "11 mins",
      "isCheck": false
    },
    {
      "descripcion": "cinco",
      "url" : 'lib/assets/content_image_01.png',
      "title" : 'Favorite',
      "hashtag" : "#favorite",
      "time" : "10 mins",
      "isCheck": false
    },
    {
      "descripcion": "cinco",
      "url" : 'lib/assets/content_image_03.png',
      "title" : 'Cook',
      "hashtag" : "#hastag",
      "time" : "16 mins",
      "isCheck": false
    },
    {
      "descripcion": "cinco",
      "url" : 'lib/assets/content_image_02.png',
      "title" : 'Cook',
      "hashtag" : "#hastag",
      "time" : "10 mins",
      "isCheck": false
    },
    {
      "descripcion": "cinco",
      "url" : 'lib/assets/content_image_01.png',
      "title" : 'Cook',
      "hashtag" : "#hastag",
      "time" : "20 mins",
      "isCheck": false
    }
  ];

  List<dynamic> selectedData = [];

  void _itemChange(int index) {
    setState(() {
      contentData[index]["isCheck"] = !contentData[index]["isCheck"];

      if (contentData[index]["isCheck"]) {
        if (!selectedData.contains(contentData[index])) {
          selectedData.add(contentData[index]);
        }
      } else {
        selectedData.remove(contentData[index]);
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(15),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(text: 'My Content', color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700),
                    CustomText(text: 'Upload from device', color: Color(0xFFDF5BFF), fontSize: 14, fontWeight: FontWeight.w400),
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                for (int index = 0; index < contentData.length; index++)
                  SizedBox(
                    child: PlayListItem(
                      data : contentData[index],
                      onTap: _itemChange,
                      index: index,
                      isCheck: contentData[index]["isCheck"]
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Visibility(
            visible: selectedData.isNotEmpty ? true : false,
            child: ContinueButton(chosen: selectedData.length)
          ),
        ),
      ],
    );
  }
}
