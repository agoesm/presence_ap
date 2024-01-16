import 'package:flutter/material.dart';
import 'package:presence_app/utils/constants/colors.dart';
import 'package:presence_app/widget/chip/chip_status_attd.dart';

class ItemAttendance extends StatelessWidget {
  final String date;
  final String startTime;
  final String endTime;
  final String status;
  final Function() onTap;
  const ItemAttendance(
      {super.key,
      required this.date,
      required this.startTime,
      required this.endTime,
      required this.status,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: kWhite,
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              decoration: const BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
              ),
              child: Text(
                date,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(color: kWhite),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Start Time',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        startTime,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'End Time',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        endTime,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      ChipStatusAttd(status: status),
                      const SizedBox(height: 5),
                      endTime == '--'
                          ? ChipStatusAttd(status: 'NP', endTime: endTime)
                          : Container(),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
