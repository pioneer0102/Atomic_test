import 'package:flutter/material.dart';
import 'package:social_media_app/utils/texts.dart';

class CreatePlaylistButtonStyle extends StatelessWidget {
  const CreatePlaylistButtonStyle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 48,
      height: 48,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(223, 0, 253, 1.0), 
            Color.fromRGBO(127, 0, 255, 1.0), 
          ],
          begin: Alignment.centerLeft, 
          end:
              Alignment.centerRight, 
          stops: [
            0.0,
            1.0
          ], 
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(600), 
        ),
      ),
      child: const Center(
        child: CustomText(text: '+', color: Colors.white, fontSize: 30, fontWeight: FontWeight.w300),
      ),
    );
  }
}
