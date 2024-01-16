import 'package:flutter/material.dart';
import 'package:presence_app/utils/constants/colors.dart';

class DividerPages extends StatelessWidget {
  const DividerPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: const Divider(
        thickness: 13,
        color: kgreyLight,
      ),
    );
  }
}
