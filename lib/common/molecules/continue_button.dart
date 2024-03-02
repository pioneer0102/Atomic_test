import 'package:flutter/material.dart';

class ContinueButton extends StatelessWidget {
  final int chosen;
  
  const ContinueButton({Key? key, required this.chosen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: FloatingActionButton(
        onPressed: () {},
        child: Container(
          width: 200, 
          height: 50, 
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color(0xFF7F00FF), Color(0xFFDF00FD)],
            ),
            borderRadius: BorderRadius.circular(
                20),
          ),
          child: Center(
            child: Text(
              'Select ($chosen) and continue',
              style: const TextStyle(color: Colors.white, fontSize: 14),
            ), 
          ),
        ),
      ),
    );
  }
}
