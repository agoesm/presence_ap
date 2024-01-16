import 'package:flutter/material.dart';

class ChipStatusAttd extends StatelessWidget {
  final String status;
  final String? endTime;
  const ChipStatusAttd({super.key, required this.status, this.endTime});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 30,
      decoration: BoxDecoration(
        color: endTime != '--' ? Colors.green.shade100 : Colors.red.shade100,
        border: Border.all(
            width: 1, color: endTime != '--' ? Colors.green : Colors.red),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(child: Text(status)),
    );
  }
}
