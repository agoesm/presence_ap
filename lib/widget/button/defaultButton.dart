import 'package:flutter/material.dart';
import 'package:presence_app/utils/constants/colors.dart';
import 'package:presence_app/utils/constants/styles.dart';

class DefaultButton extends StatelessWidget {
  final double? width;
  final double? height;
  final String text;
  final Function() onPress;
  const DefaultButton(
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
      child: ElevatedButton(
        style: defaultButtonStyle,
        onPressed: onPress,
        child: Text(
          text,
          style:
              Theme.of(context).textTheme.titleMedium?.copyWith(color: kWhite),
        ),
      ),
    );
  }
}
