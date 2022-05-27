import 'package:flutter/material.dart';

import '../../../constants/local_images_file.dart';
import '../../../constants/themes.dart';
import '../../../utils/text_style.dart';
import '../../../widgets/common_button.dart';
import '../../saved/components/saved_container.dart';
import '../components/profile_follow_container.dart';

// ignore: must_be_immutable
class Profile1Screen extends StatefulWidget {
  Profile1Screen({Key});
  @override
  _Profile1ScreenState createState() => _Profile1ScreenState();
}

class _Profile1ScreenState extends State<Profile1Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [boxshadow],
              color: AppTheme.whiteTextColor,
              gradient: LinearGradient(
                  colors: [
                    Colors.grey.withOpacity(0.9),
                    Colors.grey.withOpacity(0.9),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.0, 0.9]),
            ),
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              LocalImagesFile.tania_adoms,
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: 16.0, top: MediaQuery.of(context).padding.top),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    size: 28,
                    color: AppTheme.whiteColor,
                  ),
                ),
                Expanded(child: SizedBox()),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.share,
                    size: 28,
                    color: AppTheme.whiteColor,
                  ),
                ),
              ],
            ),
          ),
          Stack(
            children: [
              Positioned(
                top: 150 + MediaQuery.of(context).padding.top - 24,
                left: 0,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24)),
                  ),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.pink[50],
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              LocalImagesFile.tania_adoms,
                              fit: BoxFit.cover,
                              scale: 1 / 7,
                            )),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              'Tania Adams',
                              style: TextStyles(context)
                                  .getRegularStyle()
                                  .copyWith(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8, top: 4),
                            child: Text(
                              '@taniaadams',
                              style: TextStyles(context)
                                  .getDescriptionStyle()
                                  .copyWith(
                                    fontWeight: FontWeight.w300,
                                  ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ProfileFollowContainer(
                              count: '5.8K',
                              detail: 'Followers',
                            ),
                            Container(
                              color:
                                  AppTheme.lightGrayTextColor.withOpacity(0.5),
                              height: 35,
                              width: 1.3,
                            ),
                            ProfileFollowContainer(
                              count: '5.8K',
                              detail: 'Follwing',
                            ),
                            Container(
                              color:
                                  AppTheme.lightGrayTextColor.withOpacity(0.5),
                              height: 35,
                              width: 1.3,
                            ),
                            ProfileFollowContainer(
                              count: '12',
                              detail: 'My Recipes',
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 16, left: 16, right: 16),
                        child: CommonButton(
                          radius: 12,
                          buttonText: "Follow",
                          onTap: () {
                            // NavigationServices(context)
                            //     .gotoStepByStepScreen();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 416.0),
            child: SingleChildScrollView(
              child: (Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 16, bottom: 8, left: 16),
                    child: Text(
                      'The Recipe',
                      style: TextStyles(context)
                          .getRegularStyle()
                          .copyWith(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SavedContainer(
                    image1: LocalImagesFile.fish_burger,
                    personName: 'Tania Adoms',
                    recipeName: 'Fish Burger',
                    serve: '1',
                    time: '20 min',
                  ),
                  SavedContainer(
                    image1: LocalImagesFile.blueberry_toast,
                    personName: 'Tania Adoms',
                    recipeName: 'Blueberry Toast',
                    serve: '2',
                    time: '15 min',
                  ),
                  SavedContainer(
                    image1: LocalImagesFile.fish_burger,
                    personName: 'Tania Adoms',
                    recipeName: 'Fish Burger',
                    serve: '1',
                    time: '20 min',
                  ),
                  SavedContainer(
                    image1: LocalImagesFile.blueberry_toast,
                    personName: 'Tania Adoms',
                    recipeName: 'Blueberry Toast',
                    serve: '2',
                    time: '15 min',
                  ),
                  SavedContainer(
                    image1: LocalImagesFile.fish_burger,
                    personName: 'Tania Adoms',
                    recipeName: 'Fish Burger',
                    serve: '1',
                    time: '20 min',
                  ),
                  SavedContainer(
                    image1: LocalImagesFile.blueberry_toast,
                    personName: 'Tania Adoms',
                    recipeName: 'Blueberry Toast',
                    serve: '2',
                    time: '15 min',
                  ),
                ],
              )),
            ),
          ),
        ],
      ),
    );
  }
}
