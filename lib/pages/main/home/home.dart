import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
// import 'package:get/route_manager.dart';
import 'package:intl/intl.dart';
import 'package:presence_app/models/attendance_model.dart';
import 'package:presence_app/models/favorite_feature_model.dart';
import 'package:presence_app/widget/button/defaultButton.dart';
import 'package:presence_app/widget/divider/dividerPages.dart';
import 'package:presence_app/widget/items/item_attendance.dart';
import 'package:presence_app/widget/items/item_grid_feature.dart';

import '../../../utils/constants/colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  DateTime today = DateTime.now();
  String currentDate = DateFormat("dd MMM yyyy").format(DateTime.now());

  String greetingMessage() {
    var timeNow = DateTime.now().hour;

    if (timeNow <= 11.59) {
      return 'Good Morning';
    } else if (timeNow > 12 && timeNow <= 16) {
      return 'Good Afternoon';
    } else if (timeNow > 16 && timeNow < 20) {
      return 'Good Evening';
    } else {
      return 'Good Night';
    }
  }

  void navigateFeature(int index) {
    if (index == 0) {
      // Get.to(() => const Leave());
      debugPrint('Leave');
    } else if (index == 1) {
      // Get.to(() => const Overtime());
      debugPrint('Overtime');
    } else if (index == 2) {
      // Get.to(() => const Payslip());
      debugPrint('Payslip');
    } else {
      // Get.to(() => const OnDuty());
      debugPrint('OnDuty');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        centerTitle: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Jhon Dee',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              'Mobie Developer',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        toolbarHeight: 60,
        leadingWidth: 70,
        leading: const Padding(
          padding: EdgeInsets.only(left: 20),
          child: CircleAvatar(
            radius: 25,
            backgroundColor: kWhite,
            child: CircleAvatar(
              radius: 23,
              backgroundImage: AssetImage('assets/images/avatar.jpg'),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: CircleAvatar(
              radius: 21,
              backgroundColor: kWhite,
              child: IconButton(
                onPressed: () => debugPrint('notif'),
                icon: const Icon(
                  FluentIcons.alert_badge_24_filled,
                  color: primaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
          child: Column(
            children: [
              // const SizedBox(height: 30),
              SizedBox(
                child: Stack(
                  children: [
                    Container(
                      height: 150,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                      ),
                    ),
                    // Card Presence
                    Container(
                      margin: const EdgeInsets.fromLTRB(20, 25, 20, 0),
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: kWhite,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withAlpha(20),
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            greetingMessage(),
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          Text(
                            'Today, $currentDate',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            'Office Hour : [ 08:00 - 17:00 ]',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          const SizedBox(height: 5),
                          const Divider(thickness: 0.8, color: kdeepGrey),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Start Time',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              Text(
                                'End Time',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                '--',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              Text(
                                '--',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          DefaultButton(
                            width: double.infinity,
                            text: 'Record Time',
                            onPress: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const DividerPages(),
              // Favorite Feature
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Favorite Feature',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 15),
                    GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 5,
                      ),
                      itemCount: favoriteFeatureModel.length,
                      itemBuilder: (_, index) {
                        return ItemGridFeature(
                          onTap: () => navigateFeature(index),
                          icon: favoriteFeatureModel[index].icon,
                          title: favoriteFeatureModel[index].title,
                          color: favoriteFeatureModel[index].color,
                          bgColor: favoriteFeatureModel[index].bgColor,
                        );
                      },
                    ),
                  ],
                ),
              ),
              const DividerPages(),
              // Attendance List
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Attendance List',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Text(
                          'View More',
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      separatorBuilder: (context, index) => const Divider(
                        thickness: 0.1,
                        indent: 15,
                        endIndent: 15,
                      ),
                      itemCount: attendanceModel.length.clamp(0, 2),
                      itemBuilder: (_, index) {
                        return ItemAttendance(
                          onTap: () => debugPrint('attd detail'),
                          date: attendanceModel[index].date,
                          startTime: attendanceModel[index].startTime,
                          endTime: attendanceModel[index].endTime,
                          status: attendanceModel[index].status,
                        );
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
