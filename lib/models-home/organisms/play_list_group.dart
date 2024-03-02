import 'package:flutter/material.dart';
import 'package:social_media_app/models-home/molecules/play_list.dart';

class PlaylistsGroup extends StatelessWidget {
  const PlaylistsGroup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List cards = [
      {
        "url" : 'lib/assets/content_image_01.png',
        "date" : '23/09/2023',
        "likes" : '2.1 M',
        "hashtags" : [
          '#CooK', '#Vogue', '#Vogue','#Vogue', '#Vogue',
        ]
      },
      {
        "url" : 'lib/assets/content_image_02.png',
        "date" : '24/10/2024',
        "likes" : '4 K',
        "hashtags" : [
          '#CooK', '#Cook', '#Cook','#Cook', '#Cook', '#Cook'
        ]
      },
      {
        "url" : 'lib/assets/content_image_03.png',
        "date" : '04/02/20022',
        "likes" : '1.6 M',
        "hashtags" : [
          '#Third', '#Third', '#Third','#Third', '#Third', '#Third'
        ]
      },
        {
        "url" : 'lib/assets/content_image_01.png',
        "date" : '23/09/2023',
        "likes" : '2.1 M',
        "hashtags" : [
          '#Fourt', '#Fourt', '#Fourt','#Fourt', '#Fourt', '#Fourt'
        ]
      },
      {
        "url" : 'lib/assets/content_image_03.png',
        "date" : '23/09/2023',
        "likes" : '2.1 M',
        "hashtags" : [
          '#CooK', '#Vogue', '#CooK','#CooK', '#Vogue', '#CooK'
        ]
      },
      {
        "url" : 'lib/assets/content_image_02.png',
        "date" : '23/09/2023',
        "likes" : '2.1 M',
        "hashtags" : [
          '#CooK', '#Vogue', '#CooK','#CooK', '#Vogue', '#CooK'
        ]
      },
      {
        "url" : 'lib/assets/content_image_01.png',
        "date" : '23/09/2023',
        "likes" : '2.1 M',
        "hashtags" : [
          '#CooK', '#Vogue', '#CooK','#CooK', '#Vogue', '#CooK'
        ]
      },
      {
        "url" : 'lib/assets/content_image_04.png',
        "date" : '23/09/2023',
        "likes" : '2.1 M',
        "hashtags" : [
          '#CooK', '#Vogue', '#CooK','#CooK', '#Vogue', '#CooK'
        ]
      },
    ];
    
    return Expanded(
      child: Container(
        width: 420,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(55, 18, 61, 1),
              Color.fromRGBO(4, 1, 5, 1),
            ],
            begin: Alignment.topCenter, 
            end: Alignment.bottomCenter,
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Wrap(
            alignment: WrapAlignment.spaceBetween,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              for(final card in cards)
                PlayList(data : card)
            ],
          ),
        ),
      ),
    );
  }
}
