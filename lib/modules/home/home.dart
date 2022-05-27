
import 'package:flutter/material.dart';

import '../../constants/local_images_file.dart';
import '../../constants/themes.dart';
import '../../routes/route_names.dart';
import '../../utils/text_style.dart';
import '../../widgets/bottom_to_top_animation_view.dart';
import '../../widgets/common_card.dart';
import '../../widgets/common_text_field_view.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/remove_focus.dart';
import 'components/collaboration_container.dart';
import 'components/following_info.dart';
import 'components/following_restaurent_container.dart';

class HomeScreenView extends StatefulWidget {
  final AnimationController animationController;

  const HomeScreenView({Key? key, required this.animationController})
      : super(key: key);

  @override
  _HomeScreenViewState createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  TextEditingController emailController = TextEditingController();

  final PageController controller = PageController(
    initialPage: 0,
  );

  List<FollowingInfo> _getCollaborationDetail =
      FollowingInfo.getFollowingInfolist;

  @override
  void initState() {
    widget.animationController.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BottomToTopAnimationView(
      animationController: widget.animationController,
      child: Scaffold(
        key: _scaffoldKey,
        body: SafeArea(
          child: RemoveFocuse(
            onClick: () {
              FocusScope.of(context).requestFocus(FocusNode());
            },
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 16, right: 16, top: 16, bottom: 8),
                  child: CustomAppBarView(
                    centerWidget: Row(
                      children: [
                        Text(
                          'Hello, ',
                          style: TextStyles(context).getTitle2Style().copyWith(
                              color: AppTheme.primaryTextColor,
                              fontWeight: FontWeight.normal),
                        ),
                        Text(
                          'Laura 👋 ',
                          style: TextStyles(context).getTitle2Style().copyWith(
                              color: AppTheme.primaryTextColor,
                              fontWeight: FontWeight.w600),
                        ),
                        Expanded(child: SizedBox()),
                      ],
                    ),
                    rightWidget: IconButton(
                      onPressed: () {
                        setState(() {
                          NavigationServices(context).gotoNotificationScreen();
                        });
                      },
                      icon: Stack(
                        children: [
                          Icon(
                            Icons.notifications,
                            size: 28,
                            color: AppTheme.lightGrayTextColor,
                          ),
                          Positioned(
                            right: 0,
                            top: 2,
                            child: CircleAvatar(
                              backgroundColor: AppTheme.primaryColor,
                              radius: 6,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.only(bottom: 80),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 18.0, right: 18, bottom: 8),
                              child: InkWell(
                                onTap: () {
                                  NavigationServices(context)
                                      .gotoSearchScreen();
                                },
                                child: CommonCard(
                                  radius: 15,
                                  child: CommonTextFieldView(
                                    prefixIcon: Icon(Icons.search),
                                    suffixIcon: Icon(Icons.close),
                                    hintText: '  Type for find recipes.',
                                    onTap: () {
                                      NavigationServices(context)
                                          .gotoSearchScreen();
                                    },
                                  ),
                                ),
                              ),
                            ),
                            // CarouselSlider(
                            //   items: [
                            //     OfferContainer(
                            //       foodname: "burger_fries",
                            //       percent: ' 30% ',
                            //       imagepath: LocalImagesFile.collaboration1,
                            //       onTap: () {},
                            //     ),
                            //     OfferContainer(
                            //       foodname: "pasta",
                            //       percent: ' 20% ',
                            //       imagepath: LocalImagesFile.collaboration2,
                            //       onTap: () {},
                            //     ),
                            //     OfferContainer(
                            //       foodname: "vegies_salad",
                            //       percent: ' 10% ',
                            //       imagepath: LocalImagesFile.collaboration1,
                            //       onTap: () {},
                            //     ),
                            //   ],
                            //   options: CarouselOptions(
                            //     height: 150.0,
                            //     enlargeCenterPage: true,
                            //     autoPlay: true,
                            //     aspectRatio: 1,
                            //     autoPlayCurve: Curves.fastOutSlowIn,
                            //     enableInfiniteScroll: true,
                            //     autoPlayAnimationDuration:
                            //         Duration(milliseconds: 600),
                            //     viewportFraction: 0.8,
                            //   ),
                            // ),
                            CollaborationContainer(
                              state: 'ongoing',
                              followers: '+5 others',
                              imagepath2: LocalImagesFile.vagetable_salad1,
                              foodname: "Vagetable Salad",
                              imagepath: LocalImagesFile.collaboration1,
                              onTap: () {
                                NavigationServices(context)
                                    .gotoCollaborationScreenDetails();
                              },
                            ),

                            Padding(
                              padding: const EdgeInsets.all(16),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Following",
                                    style: TextStyles(context)
                                        .getRegularStyle()
                                        .copyWith(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      NavigationServices(context)
                                          .gotoUploadRecipeScreen();
                                    },
                                    child: Text(
                                      "see all",
                                      style: TextStyles(context)
                                          .getDescriptionStyle(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            for (var item in _getCollaborationDetail)
                              FollowingContainer(
                                isselected: item.isbookmark,
                                imagepath: item.imagepath,
                                receipeName: item.restaurentname,
                                serve: item.serve,
                                time: item.time,
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
