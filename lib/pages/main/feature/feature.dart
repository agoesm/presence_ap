import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:presence_app/models/all_feature_model.dart';
import 'package:presence_app/utils/constants/colors.dart';
import 'package:presence_app/widget/items/item_grid_feature.dart';
import 'package:presence_app/widget/items/item_list_feature.dart';

class Feature extends StatefulWidget {
  const Feature({super.key});

  @override
  State<Feature> createState() => _FeatureState();
}

class _FeatureState extends State<Feature> {
  int layout = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        // backgroundColor: primaryColor,
        automaticallyImplyLeading: true,
        title: Text('Features', style: Theme.of(context).textTheme.titleLarge),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                layout = 0;
              });
            },
            icon: Icon(
              FluentIcons.text_bullet_list_24_filled,
              color: layout == 0 ? primaryColor : kdeepGrey,
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                layout = 1;
              });
            },
            icon: Icon(
              FluentIcons.grid_24_filled,
              color: layout == 1 ? primaryColor : kdeepGrey,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(bottom: 50),
          child: Column(
            children: [
              const SizedBox(height: 25),
              layout != 0
                  ? Container(
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      child: GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 5,
                          mainAxisExtent: 100, // bottom overflow
                        ),
                        itemCount: allFeatureModel.length,
                        itemBuilder: (_, index) {
                          return ItemGridFeature(
                            // onTap: () => navigateFeature(index),
                            onTap: () {},
                            icon: allFeatureModel[index].icon,
                            title: allFeatureModel[index].title,
                            color: allFeatureModel[index].color,
                            bgColor: allFeatureModel[index].bgColor,
                          );
                        },
                      ),
                    )
                  : ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      separatorBuilder: (context, index) => Container(
                        height: 1,
                        width: double.infinity,
                        decoration: const BoxDecoration(color: kgreyLight),
                      ),
                      itemCount: allFeatureModel.length,
                      itemBuilder: (_, index) {
                        return ItemListFeature(
                          // onTap: () => navigateFeature(index),
                          onTap: () {},
                          icon: allFeatureModel[index].icon,
                          title: allFeatureModel[index].title,
                          color: allFeatureModel[index].color,
                          bgColor: allFeatureModel[index].bgColor,
                        );
                      },
                    )
            ],
          ),
        ),
      ),
    );
  }
}
