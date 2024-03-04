import 'package:flutter/material.dart';
import 'package:social_media_app/widgets/models-home/organisms/thumbnail.dart';
import 'package:social_media_app/widgets/models-home/organisms/play_list_group.dart';

class Library extends StatelessWidget {
  const Library({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Thumbnail(),
        PlaylistsGroup(), // Change this line
      ],
    );
  }
}