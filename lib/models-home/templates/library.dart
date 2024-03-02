import 'package:flutter/material.dart';
import 'package:social_media_app/models-home/organisms/thumbnail.dart';
import 'package:social_media_app/models-home/organisms/play_list_group.dart';

class Library extends StatelessWidget {
  const Library({super.key});

  @override
  Widget build(BuildContext context) {

    return const Column(
      children: [
        Thumbnail(),
        PlaylistsGroup()
      ],
    );
  }
}
