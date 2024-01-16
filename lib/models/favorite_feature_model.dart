import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class FavoriteFeatureModel {
  IconData icon;
  Color color;
  Color bgColor;
  String title;

  FavoriteFeatureModel({
    required this.icon,
    required this.color,
    required this.bgColor,
    required this.title,
  });
}

List<FavoriteFeatureModel> favoriteFeatureModel = [
  FavoriteFeatureModel(
    icon: FluentIcons.person_prohibited_28_filled,
    color: Colors.red,
    bgColor: Colors.red.shade100,
    title: 'Leave',
  ),
  FavoriteFeatureModel(
    icon: FluentIcons.weather_moon_24_filled,
    color: Colors.blue,
    bgColor: Colors.blue.shade100,
    title: 'Overtime',
  ),
  FavoriteFeatureModel(
    icon: FluentIcons.feed_28_filled,
    color: Colors.amber,
    bgColor: Colors.amber.shade100,
    title: 'Payslip',
  ),
  FavoriteFeatureModel(
    icon: FluentIcons.briefcase_28_filled,
    color: Colors.purple,
    bgColor: Colors.purple.shade100,
    title: 'On Duty',
  ),
];
