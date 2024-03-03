import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final String hintText;
  final int maxLines;

  
  const CustomInput({Key? key, required this.hintText, required this.maxLines}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText, 
        hintStyle: const TextStyle(
          fontWeight: FontWeight.w500,
          color: Colors.white,
          fontSize: 14
        ),
        filled: true,
        fillColor: const Color.fromARGB(15, 255, 255, 255), 
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0), 
          borderSide: const BorderSide(
            color: Colors.white, 
            width: 0.1
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide:const BorderSide(
            color: Colors.white, 
            width: 0.1
          ),
        ),
      ),
      style: const TextStyle(
        fontWeight: FontWeight.w500,
        color: Colors.white,
        fontSize: 14
      ),
    );
  }
}
