import 'package:flutter/material.dart';
import '../../constants/local_images_file.dart';
import '../../constants/themes.dart';
import '../../routes/route_names.dart';
import '../../utils/text_style.dart';
import '../../widgets/bottom_to_top_animation_view.dart';
import '../../widgets/common_button.dart';
import 'components/profile_follow_container.dart';
import 'components/profile_recipe_container.dart';

// ignore: must_be_immutable
class Profile extends StatefulWidget {
  final AnimationController animationController;

  Profile({required this.animationController});
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  void initState() {
    widget.animationController.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BottomToTopAnimationView(
        animationController: widget.animationController,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                boxShadow: [boxshadow],
                color: AppTheme.whiteTextColor,
                gradient: LinearGradient(
                    colors: [
                      Colors.grey.withOpacity(0.6),
                      Colors.grey.withOpacity(0.9),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.0, 0.9]),
              ),
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                LocalImagesFile.laura_harper,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 16.0, top: MediaQuery.of(context).padding.top),
              child: Row(
                children: [
                  Expanded(child: SizedBox()),
                  IconButton(
                    onPressed: () {
                      NavigationServices(context).gotoProfileInsightsScreen();
                    },
                    icon: Icon(
                      Icons.menu,
                      color: AppTheme.whiteColor,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      NavigationServices(context).gotoSettingsScreen();
                    },
                    icon: Icon(
                      Icons.settings,
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
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.pink[50],
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              LocalImagesFile.laura_harper,
                              fit: BoxFit.cover,
                              scale: 1 / 7,
                            )),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              'Laura Harper',
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
                              '@lauraharper',
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
                          backgroundColor:
                              AppTheme.secondaryTextColor.withOpacity(0.01),
                          buttonText: "Edit Profile",
                          textColor: AppTheme.lightGrayTextColor,
                          onTap: () {
                            NavigationServices(context).gotoEditProfileScreen();
                          },
                        ),
                      ),
                    ],
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
                      padding: const EdgeInsets.only(
                          top: 16, bottom: 8, left: 16, right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'My Recipe',
                            style: TextStyles(context)
                                .getRegularStyle()
                                .copyWith(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '12 recipes',
                            style: TextStyles(context)
                                .getDescriptionStyle()
                                .copyWith(
                                  fontWeight: FontWeight.w300,
                                ),
                          ),
                        ],
                      ),
                    ),
                    ProfileRecipeContainer(
                      image1: LocalImagesFile.curry_salmon_soup,
                      uploaded: 'Uploaded 6 days ago',
                      recipeName: 'Curry Salmon Soup',
                      category: 'Soup',
                      serve: '3',
                      time: '60 min',
                    ),
                    ProfileRecipeContainer(
                      image1: LocalImagesFile.beaf_romen,
                      uploaded: 'Uploaded 6 days ago',
                      category: 'Soup',
                      recipeName: 'Beef Ramen',
                      serve: '3',
                      time: '35 min',
                    ),
                    ProfileRecipeContainer(
                      image1: LocalImagesFile.curry_salmon_soup,
                      uploaded: 'Uploaded 6 days ago',
                      recipeName: 'Curry Salmon Soup',
                      category: 'Soup',
                      serve: '3',
                      time: '60 min',
                    ),
                    ProfileRecipeContainer(
                      image1: LocalImagesFile.beaf_romen,
                      uploaded: 'Uploaded 6 days ago',
                      category: 'Soup',
                      recipeName: 'Beef Ramen',
                      serve: '3',
                      time: '35 min',
                    ),
                    ProfileRecipeContainer(
                      image1: LocalImagesFile.curry_salmon_soup,
                      uploaded: 'Uploaded 6 days ago',
                      recipeName: 'Curry Salmon Soup',
                      category: 'Soup',
                      serve: '3',
                      time: '60 min',
                    ),
                    ProfileRecipeContainer(
                      image1: LocalImagesFile.beaf_romen,
                      uploaded: 'Uploaded 6 days ago',
                      category: 'Soup',
                      recipeName: 'Beef Ramen',
                      serve: '3',
                      time: '35 min',
                    ),
                    SizedBox(height: 100),
                  ],
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
