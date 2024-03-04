import 'package:flutter/material.dart';
import 'package:reorderable_grid_view/reorderable_grid_view.dart';
import 'package:social_media_app/widgets/models-home/molecules/play_list.dart';

class PlaylistsGroup extends StatefulWidget {
  const PlaylistsGroup({Key? key}) : super(key: key);

  @override
  _PlaylistsGroupState createState() => _PlaylistsGroupState();
}

class _PlaylistsGroupState extends State<PlaylistsGroup> {
  List<Map<String, dynamic>> cards = [
    {
      "url": 'lib/assets/content_image_01.png',
      "date": '23/09/2023',
      "likes": '2.1 M',
      "hashtags": ['#CooK', '#Vogue', '#Vogue', '#Vogue',]
    },
    {
      "url": 'lib/assets/content_image_02.png',
      "date": '24/10/2024',
      "likes": '4 K',
      "hashtags": ['#CooK', '#Cook', '#Cook', '#Cook', '#Cook', '#Cook']
    },
    {
      "url": 'lib/assets/content_image_03.png',
      "date": '04/02/20022',
      "likes": '1.6 M',
      "hashtags": ['#Third', '#Third', '#Third', '#Third', '#Third', '#Third']
    },
    {
      "url": 'lib/assets/content_image_01.png',
      "date": '23/09/2023',
      "likes": '2.1 M',
      "hashtags": ['#Fourt', '#Fourt', '#Fourt', '#Fourt', '#Fourt', '#Fourt']
    },
    {
      "url": 'lib/assets/content_image_03.png',
      "date": '23/09/2023',
      "likes": '2.1 M',
      "hashtags": ['#CooK', '#Vogue', '#CooK', '#CooK', '#Vogue', '#CooK']
    },
    {
      "url": 'lib/assets/content_image_02.png',
      "date": '23/09/2023',
      "likes": '2.1 M',
      "hashtags": ['#CooK', '#Vogue', '#CooK', '#CooK', '#Vogue', '#CooK']
    },
    {
      "url": 'lib/assets/content_image_01.png',
      "date": '23/09/2023',
      "likes": '2.1 M',
      "hashtags": ['#CooK', '#Vogue', '#CooK', '#CooK', '#Vogue', '#CooK']
    },
    {
      "url": 'lib/assets/content_image_04.png',
      "date": '23/09/2023',
      "likes": '2.1 M',
      "hashtags": ['#CooK', '#Vogue', '#CooK', '#CooK', '#Vogue', '#CooK']
    },
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Expanded(
      child: Container(
        width: 550,
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
        child: ReorderableGridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 50,
          mainAxisSpacing: 50,
          children: cards.map((card) => PlayList(key: ValueKey(card.hashCode), data: card)).toList(),
          // [
          //   for (int index = 0; index < cards.length; index++)
          //     PlayList(
          //       key: ValueKey(cards[index].hashCode),
          //       data: cards[index],
          //     )
          // ],
          onReorder: (int oldIndex, int newIndex) {
            setState(() {
              final Map<String, dynamic> item = cards.removeAt(oldIndex);
              cards.insert(newIndex, item);
            });
          },
        ),
      ),
    );
  }
}
