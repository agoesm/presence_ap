import 'package:flutter/material.dart';
import 'package:presence_app/utils/constants/styles.dart';

class OutlineCustomBtn extends StatelessWidget {
  final double? width;
  final double? height;
  final String text;
  final Function() onPress;
  const OutlineCustomBtn(
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
        style: outlineButtonStyle,
        onPressed: onPress,
        child: Text(text),
      ),
    );
  }
}
