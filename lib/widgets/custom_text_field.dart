import 'package:flutter/material.dart';
import 'package:to_do_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.txt,
    this.maxLines = 1,
  });
  final String txt;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: const Color(0xffC65E52),
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: txt,
        hintStyle: const TextStyle(color: kPrimaryColor),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
