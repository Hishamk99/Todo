import 'package:flutter/material.dart';
import 'package:to_do_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.txt,
    this.onTap,
  });
  final String txt;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        width: MediaQuery.of(context).size.width,
        height: 50,
        child: Center(
          child: Text(
            txt,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
