
import 'package:flutter/material.dart';
import 'dart:math' as math;
import '../../constants/themes.dart';
import '../../utils/text_style.dart';
import '../add_recipes/add_recipes.dart';
import '../collaboration/collaboration_screen.dart';
import '../home/home.dart';
import '../profile/profile.dart';
import '../saved/saved.dart';
import 'tab_button_ui.dart';

class BottomTab extends StatefulWidget {
  const BottomTab({
    Key? key,
  }) : super(key: key);

  @override
  _BottomTabState createState() => _BottomTabState();
}

class _BottomTabState extends State<BottomTab> with TickerProviderStateMixin {
  late AnimationController _animationController;

  Widget _indexView = Container();
  BottomBarType bottomBarType = BottomBarType.Home;

  @override
  void initState() {
    _animationController =
        AnimationController(duration: Duration(milliseconds: 400), vsync: this);
    WidgetsBinding.instance.addPostFrameCallback((_) => _startLoadScreen());
    super.initState();
  }

  Future _startLoadScreen() async {
    await Future.delayed(const Duration(milliseconds: 240));
    setState(() {
      _indexView = HomeScreenView(
        animationController: _animationController,
      );
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _indexView,
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(child: SizedBox()),
                getBottomBarUI(bottomBarType),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void tabClick(
    BottomBarType tabType,
  ) {
    if (tabType != bottomBarType) {
      bottomBarType = tabType;
      _animationController.reverse().then(
        (f) {
          if (tabType == BottomBarType.Home) {
            setState(() {
              _indexView = HomeScreenView(
                animationController: _animationController,
              );
            });
          } else if (tabType == BottomBarType.Collaboration) {
            setState(() {
              _indexView = CollaborationScreen(
                animationController: _animationController,
              );
            });
          } else if (tabType == BottomBarType.AddRecipe) {
            setState(() {
              _indexView = AddRecipesScreen(
                animationController: _animationController,
              );
            });
          } else if (tabType == BottomBarType.Saved) {
            setState(() {
              _indexView = SavedScreen(
                animationController: _animationController,
              );
            });
          } else if (tabType == BottomBarType.Profile) {
            setState(() {
              _indexView = Profile(
                animationController: _animationController,
              );
            });
          }
        },
      );
    }
  }

  Widget getBottomBarUI(BottomBarType tabType) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Container(
          height: 62,
          decoration: BoxDecoration(
              color: AppTheme.whiteTextColor, boxShadow: [homeTabboxshadow]),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TabButtonUI(
                icon: Icons.home_filled,
                isSelected: tabType == BottomBarType.Home,
                onTap: () {
                  tabClick(BottomBarType.Home);
                },
              ),
              TabButtonUI(
                icon: Icons.podcasts_outlined,
                isSelected: tabType == BottomBarType.Collaboration,
                onTap: () {
                  tabClick(BottomBarType.Collaboration);
                },
              ),
              TabButtonUI(
                icon: Icons.add,
                isSelected: tabType == BottomBarType.AddRecipe,
                onTap: () {
                  tabClick(BottomBarType.AddRecipe);
                },
              ),
              TabButtonUI(
                icon: Icons.bookmark,
                isSelected: tabType == BottomBarType.Saved,
                onTap: () {
                  tabClick(BottomBarType.Saved);
                },
              ),
              TabButtonUI(
                icon: Icons.person,
                isSelected: tabType == BottomBarType.Profile,
                onTap: () {
                  tabClick(BottomBarType.Profile);
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class TabClipper extends CustomClipper<Path> {
  TabClipper({this.radius = 38.0});

  final double radius;

  @override
  Path getClip(Size size) {
    final Path path = Path();

    final double v = radius * 2;
    path.lineTo(0, 0);
    path.arcTo(Rect.fromLTWH(0, 0, radius, radius), degreeToRadians(180),
        degreeToRadians(90), false);
    path.arcTo(
        Rect.fromLTWH(
            ((size.width / 2) - v / 2) - radius + v * 0.04, 0, radius, radius),
        degreeToRadians(270),
        degreeToRadians(70),
        false);

    path.arcTo(Rect.fromLTWH((size.width / 2) - v / 2, -v / 2, v, v),
        degreeToRadians(160), degreeToRadians(-140), false);

    path.arcTo(
        Rect.fromLTWH((size.width - ((size.width / 2) - v / 2)) - v * 0.04, 0,
            radius, radius),
        degreeToRadians(200),
        degreeToRadians(70),
        false);
    path.arcTo(Rect.fromLTWH(size.width - radius, 0, radius, radius),
        degreeToRadians(270), degreeToRadians(90), false);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(TabClipper oldClipper) => true;

  double degreeToRadians(double degree) {
    final double redian = (math.pi / 180) * degree;
    return redian;
  }
}

enum BottomBarType { Home, Collaboration, AddRecipe, Saved, Profile }
