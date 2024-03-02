import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image/image.dart' as img;
import 'package:social_media_app/common/molecules/custom_input.dart';
import 'package:social_media_app/common/molecules/new_thumbnail_image.dart';
import 'package:social_media_app/utils/texts.dart';

class TabDetails extends StatefulWidget {
  const TabDetails({Key? key}) : super(key: key);

  @override
  _TabDetailsState createState() => _TabDetailsState();
}

class _TabDetailsState extends State<TabDetails> {
  var currentImage = "";
  File? galleryFile;
  final picker = ImagePicker();
  String? imageSelected;

  Future<void> _getImage(ImageSource img) async {
    final pickedFile = await picker.pickImage(source: img);

    if (pickedFile != null) {
      final bytes = await pickedFile.readAsBytes();
      final compressedBytes = await _compressImage(bytes);
      setState(() {
        imageSelected = base64Encode(compressedBytes);
      });
    }
  }

  Future<Uint8List> _compressImage(Uint8List inputBytes) async {
    final originalImage = img.decodeImage(inputBytes);
    final compressedImage = img.copyResize(originalImage!, width: 500, height: 300);
    final compressedImage2 = img.encodeJpg(compressedImage, quality: 100); 
    return Uint8List.fromList(compressedImage2);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.grey,
                width: 0.1
              )
            ),
            margin: const EdgeInsets.all(10),
            width: 343,
            height: 200,
            child: currentImage == "" ? Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CustomText(text: 'Choose Playlist Thumbnail', color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
                chargeImageWidget(),
                const CustomText(text: 'Select form content', color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700),
              ],
            ) : NewThumbnailImage(currentImage: currentImage)
          ),
          Container(
            margin: const EdgeInsets.all(10),
            width: 343,
            height: 90,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(text: 'Playlist name', color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500),
                CustomInput(hintText: 'Live Video Calls', maxLines: 1)
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            width: 343,
            height: 300,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(text: 'Description', color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500),
                SizedBox(height: 20),
                CustomInput(hintText: 'Live Video Calls', maxLines: 8)
              ],
            ),
          )
          
        ],
      ),
    );
  }
  
  Widget chargeImageWidget() {
    return Container(
      width: 173,
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20), 
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Color(0xFF7F00FF), Color(0xFFDF00FD)],
        ),
      ),
      margin: const EdgeInsets.all(3),
      child: TextButton(
        onPressed: () async {
          await _getImage(ImageSource.gallery);
          currentImage = imageSelected == null ? "" : imageSelected!;
        },
        child: const Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(width: 10),
            CustomText(text: 'Upload from Device', color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700),
          ],
        ),
      ),
    );
  }
}
