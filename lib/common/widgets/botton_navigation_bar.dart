import 'package:flutter/material.dart';
import 'package:social_media_app/common/atoms/create_playlist_button_style.dart';
import 'package:social_media_app/common/templeates/create_playlist.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 72,
        width: 343,
        margin: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
          color: Color.fromARGB(240, 43, 43, 43),
          borderRadius: BorderRadius.all(
            Radius.circular(40), 
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {},
              child: const Image(image: AssetImage('lib/assets/home_icon.png'))
            ),
            TextButton(
              onPressed: () {},
              child:const Image(image: AssetImage('lib/assets/play_icon.png'))
            ),
            TextButton(
              onPressed: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  backgroundColor: Colors.transparent,
                  builder: (BuildContext context) {
                    return SafeArea(
                      child: Container(
                        margin: const EdgeInsets.only(top: 50),
                        child: const CreatePlaylist(),
                      ),
                    );
                  },
                );
              },
              child: const CreatePlaylistButtonStyle()
            ),
            TextButton(
              onPressed: () {},
              child: const Image(image: AssetImage('lib/assets/comments_icon.png'))
            ),
            TextButton(
              onPressed: () {},
              child:const Image(image: AssetImage('lib/assets/contact_icon.png'))
            )
          ],
        ),
      ),
    );
  }
}
