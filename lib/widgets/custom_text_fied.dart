import 'package:flutter/material.dart';
import 'package:note_app/const.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: KPrimaryColor,
      decoration: InputDecoration(
        hintText: 'Title',
        hintStyle: const TextStyle(color: KPrimaryColor),
        border: BuildBorder(),
        enabledBorder: BuildBorder(),
        focusedBorder: BuildBorder(KPrimaryColor),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  OutlineInputBorder BuildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}
