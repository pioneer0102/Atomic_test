import 'package:flutter/material.dart';
import 'package:social_media_app/common/widgets/botton_navigation_bar.dart';
import 'package:social_media_app/models-home/templates/library.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          height: 1500,
          child: Library()
        )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SafeArea(
        child:BottomButton() 
      ),
    );
  }
}
