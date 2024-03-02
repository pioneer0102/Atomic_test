import 'package:flutter/material.dart';
import 'package:social_media_app/utils/texts.dart';

class HashTagsGroup extends StatelessWidget {

  final List data;

  const HashTagsGroup({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.start,
      crossAxisAlignment: WrapCrossAlignment.start,
      children: [
        for (final hastag in data)
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: CustomText(
              text: '$hastag',
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w700
            ),
          )
      ],
    );
  }
}
