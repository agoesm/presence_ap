import 'package:flutter/material.dart';

class ProfileMenuModel {
  String title;
  IconData? icon;
  dynamic trailing;

  ProfileMenuModel({
    required this.title,
    this.icon,
    this.trailing,
  });
}

List<ProfileMenuModel> profileMenuModel = <ProfileMenuModel>[
  ProfileMenuModel(
    icon: Icons.person_outline,
    title: 'My Profile',
    trailing: 'null',
  ),
  ProfileMenuModel(
    icon: Icons.light_mode_outlined,
    title: 'Light Mode',
    trailing: 'switch',
  ),
  ProfileMenuModel(
    icon: Icons.translate_rounded,
    title: 'Language',
    trailing: 'id',
  ),
  ProfileMenuModel(
    icon: Icons.info_outline,
    title: 'App Info',
    trailing: 'null',
  ),
  ProfileMenuModel(
    icon: Icons.exit_to_app_rounded,
    title: 'Logout',
    trailing: 'null',
  ),
];
