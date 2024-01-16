import 'package:flutter/material.dart';

class ItemListFeature extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;
  final Color bgColor;
  final Function() onTap;
  const ItemListFeature(
      {super.key,
      required this.icon,
      required this.title,
      required this.color,
      required this.bgColor,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ListTile(
        leading: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(
            icon,
            color: color,
          ),
        ),
        title: Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
