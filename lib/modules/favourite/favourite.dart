import 'package:flutter/material.dart';
// import 'package:cookiess/language/lang/appLocalization.dart';
// import 'package:cookiess/logic/providers/theme_provider.dart';
// import 'package:cookiess/modules/favourite/components/favourite_info.dart';
// import 'package:cookiess/modules/home/components/icon_menu_button.dart';
// import 'package:cookiess/utils/text_style.dart';
// import 'package:cookiess/widgets/bottom_to_top_animation_view.dart';
// import 'package:cookiess/widgets/custom_appbar.dart';
import 'package:provider/provider.dart';
import '../../logic/providers/theme_provider.dart';
import '../../utils/text_style.dart';
import '../../widgets/bottom_to_top_animation_view.dart';
import '../../widgets/custom_appbar.dart';
import '../home/components/icon_menu_button.dart';
import 'components/favourite_info.dart';

class FavouriteScreen extends StatefulWidget {
  final AnimationController animationController;
  const FavouriteScreen({Key? key, required this.animationController})
      : super(key: key);

  @override
  _FavouriteScreenState createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  void initState() {
    widget.animationController.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      // drawer: OpenDrawer(type: DrawerType.Favourite),
      body: SafeArea(
        child: BottomToTopAnimationView(
          animationController: widget.animationController,
          child: Consumer<ThemeProvider>(
            builder: (_, provider, child) => (Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: CustomAppBarView(
                    leftWidget: IconMenuButton(),
                    centerWidget: Text(
                      "favourites",
                      style: TextStyles(context)
                          .getRegularStyle()
                          .copyWith(fontSize: 16),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: favouriteItems.length,
                    itemBuilder: (BuildContext context, int index) {
                      return favouriteItems[index];
                    },
                  ),
                ),
              ],
            )),
          ),
        ),
      ),
    );
  }
}
