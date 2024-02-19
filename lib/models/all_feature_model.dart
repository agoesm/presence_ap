import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class AllFeatureModel {
  IconData icon;
  Color color;
  Color bgColor;
  String title;

  AllFeatureModel({
    required this.icon,
    required this.color,
    required this.bgColor,
    required this.title,
  });
}

List<AllFeatureModel> allFeatureModel = [
  AllFeatureModel(
    icon: FluentIcons.building_32_filled,
    color: Colors.indigo,
    bgColor: Colors.indigo.shade100,
    title: 'Company Profile',
  ),
  AllFeatureModel(
    icon: FluentIcons.alert_badge_24_filled,
    color: Colors.indigo,
    bgColor: Colors.indigo.shade100,
    title: 'Announcement',
  ),
  AllFeatureModel(
    icon: FluentIcons.calendar_checkmark_28_filled,
    color: Colors.green,
    bgColor: Colors.green.shade100,
    title: 'Attendance List',
  ),
  AllFeatureModel(
    icon: FluentIcons.person_prohibited_28_filled,
    color: Colors.red,
    bgColor: Colors.red.shade100,
    title: 'Leave',
  ),
  AllFeatureModel(
    icon: FluentIcons.weather_moon_24_filled,
    color: Colors.blue,
    bgColor: Colors.blue.shade100,
    title: 'Overtime',
  ),
  AllFeatureModel(
    icon: FluentIcons.briefcase_28_filled,
    color: Colors.purple,
    bgColor: Colors.purple.shade100,
    title: 'On Duty',
  ),
  AllFeatureModel(
    icon: FluentIcons.feed_28_filled,
    color: Colors.amber,
    bgColor: Colors.amber.shade100,
    title: 'Payslip',
  ),
  AllFeatureModel(
    icon: FluentIcons.money_calculator_24_filled,
    color: Colors.cyan,
    bgColor: Colors.cyan.shade100,
    title: 'Loan',
  ),
];
