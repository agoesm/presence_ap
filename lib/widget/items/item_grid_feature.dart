import 'package:flutter/material.dart';

class ItemGridFeature extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;
  final Color bgColor;
  final Function() onTap;
  const ItemGridFeature(
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
      borderRadius: BorderRadius.circular(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
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
          const SizedBox(height: 10),
          Text(
            title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodySmall,
            softWrap: false,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
