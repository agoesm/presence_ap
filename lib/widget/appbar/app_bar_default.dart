import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class AppBarDefault extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const AppBarDefault({
    super.key,
    required this.title,
  });

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      // backgroundColor: primaryColor,
      title: Text(title),
      leading: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: CircleAvatar(
          radius: 60,
          backgroundColor: Colors.grey.shade300,
          child: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Get.back(),
          ),
        ),
      ),
    );
  }
}
