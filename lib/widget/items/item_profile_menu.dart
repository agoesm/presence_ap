import 'package:flutter/material.dart';

class ItemProfileMenu extends StatelessWidget {
  final dynamic icon;
  final String title;
  final dynamic actions;
  final Function() onTap;
  const ItemProfileMenu(
      {super.key,
      required this.icon,
      required this.title,
      this.actions,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      highlightColor: title == 'Logout' ? Colors.red.withOpacity(0.1) : null,
      splashColor: title == 'Logout' ? Colors.red.withOpacity(0.1) : null,
      child: ListTile(
        leading: Icon(
          icon,
          color: title == 'Logout' ? Colors.red : Colors.grey.shade700,
        ),
        title: Text(
          title,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: title == 'Logout' ? Colors.red : Colors.grey.shade700),
        ),
        trailing: actions,
      ),
    );
  }
}
