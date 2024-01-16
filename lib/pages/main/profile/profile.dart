import 'package:flutter/material.dart';
import 'package:presence_app/models/profile_menu_model.dart';
import 'package:presence_app/utils/constants/colors.dart';
import 'package:presence_app/widget/items/item_profile_menu.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile', style: Theme.of(context).textTheme.titleLarge),
        centerTitle: false,
        automaticallyImplyLeading: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
          child: Column(
            children: [
              const SizedBox(height: 20),
              // Profile preview
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 35,
                          backgroundImage:
                              AssetImage('assets/images/avatar.jpg'),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hi, Jhon Dee',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            Text(
                              'Mobile Developer',
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              // List Menu Profile
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) => Container(
                  height: 1,
                  width: double.infinity,
                  decoration: const BoxDecoration(color: kgreyLight),
                ),
                itemCount: profileMenuModel.length,
                itemBuilder: (_, index) {
                  return ItemProfileMenu(
                    onTap: () {},
                    icon: profileMenuModel[index].trailing != 'switch'
                        ? profileMenuModel[index].icon
                        : isSwitched
                            ? Icons.nightlight_round_outlined
                            : Icons.light_mode_outlined,
                    title: profileMenuModel[index].trailing != 'switch'
                        ? profileMenuModel[index].title
                        : isSwitched
                            ? 'Night Mode'
                            : 'Light Mode',
                    actions: profileMenuModel[index].trailing == 'switch'
                        ? Switch.adaptive(
                            value: isSwitched,
                            onChanged: (value) {
                              setState(() {
                                isSwitched = value;
                                print(isSwitched);
                              });
                            },
                            // activeTrackColor: Colors.lightGreenAccent,
                            // activeColor: Colors.green,
                          )
                        : profileMenuModel[index].trailing == 'id'
                            ? const Icon(Icons.arrow_forward_ios_rounded)
                            : null,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
