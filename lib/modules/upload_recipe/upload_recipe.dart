import 'package:flutter/material.dart';
import '../../constants/themes.dart';
import '../../utils/text_style.dart';
import '../../widgets/custom_appbar.dart';
import '../home/components/following_info.dart';
import '../home/components/following_restaurent_container.dart';

class UploadRecipe extends StatefulWidget {
  @override
  _UploadRecipeState createState() => _UploadRecipeState();
}

class _UploadRecipeState extends State<UploadRecipe> {
  List<FollowingInfo> _getCollaborationDetail =
      FollowingInfo.getFollowingInfolist;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 16, bottom: 16),
          child: Stack(
            children: [
              CustomAppBarView(
                centerWidget: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          Navigator.pop(context);
                        });
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        size: 28,
                        color: AppTheme.primaryTextColor,
                      ),
                    ),
                    Text(
                      "Upload recipe",
                      style: TextStyles(context).getTitle2Style().copyWith(
                          color: AppTheme.primaryTextColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          // NavigationServices(context)
                          //     .gotoUploadRecipeScreen();
                        });
                      },
                      child: Container(
                        height: 30,
                        decoration: BoxDecoration(
                            color: AppTheme.primaryColor,
                            borderRadius: BorderRadius.circular(100)),
                        child: Center(
                          child: Text("     Write Recipe     ",
                              style: TextStyles(context)
                                  .getRegularStyle()
                                  .copyWith(
                                      fontSize: 14,
                                      color: AppTheme.whiteColor)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 54.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
