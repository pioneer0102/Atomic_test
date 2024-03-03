import 'package:flutter/material.dart';

class TurnBack extends StatelessWidget {
  const TurnBack({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: FloatingActionButton(
        onPressed: () {},
        child: Container(
          width: 50,
          height: 50, 
          decoration: BoxDecoration(
            color: const Color.fromARGB(204, 73, 73, 73),
            borderRadius: BorderRadius.circular(15), 
          ),
          child: const Center(
              child: Image(image: AssetImage('lib/assets/arrow_back.png'))),
        ),
      ),
    );
  }
}
