import 'package:flutter/material.dart';
import 'package:presence_app/utils/constants/styles.dart';

class TransparentButton extends StatelessWidget {
  final double? width;
  final double? height;
  final String text;
  final Function() onPress;
  const TransparentButton(
      {super.key,
      this.width,
      this.height,
      required this.text,
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: OutlinedButton(
        style: transparentButtonStyle,
        onPressed: onPress,
        child: Text(text),
      ),
    );
  }
}
