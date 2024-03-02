import 'dart:convert';
import 'dart:ui';
import 'package:flutter/material.dart';

class NewThumbnailImage extends StatefulWidget {
  final String currentImage;

  const NewThumbnailImage({Key? key, required this.currentImage}) : super(key: key);

  @override
  _NewThumbnailImageState createState() => _NewThumbnailImageState();
}

class _NewThumbnailImageState extends State<NewThumbnailImage> {
  late String currentImage;

  @override
  void initState() {
    super.initState();
    currentImage = widget.currentImage;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.memory(
            base64Decode(currentImage),
            width: 400,
            height: 400,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Row(
            children: [
              TextButton(
                onPressed: () {},
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16), 
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                    child: Container(
                      width: 44, 
                      height: 44, 
                      color: const Color.fromARGB(255, 189, 188, 188).withOpacity(0.2), 
                      child: Center(
                        child: Image.asset('lib/assets/camera.png'), 
                      ),
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    currentImage = "";
                  });
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                    child: Container(
                      width: 44, 
                      height: 44,
                      color: const Color(0xFFFF4D4D), 
                      child: Center(
                        child: Image.asset('lib/assets/trash_delete.png'), 
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
