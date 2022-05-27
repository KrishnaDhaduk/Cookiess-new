
import 'package:flutter/material.dart';
import '../../constants/themes.dart';
import '../../utils/text_style.dart';
import '../../widgets/common_card.dart';
import '../../widgets/common_text_field_view.dart';
import '../../widgets/custom_appbar.dart';
import '../home/components/following_info.dart';
import '../home/components/following_restaurent_container.dart';

class SearchResult extends StatefulWidget {
  @override
  _SearchResultState createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
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
              Padding(
                padding: const EdgeInsets.only(),
                child: CustomAppBarView(
                  leftWidget: IconButton(
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
                  centerWidget: Row(
                    children: [
                      Expanded(child: SizedBox()),
                      Padding(
                        padding: const EdgeInsets.only(right: 40.0),
                        child: Text(
                          "Search",
                          style: TextStyles(context).getTitle2Style().copyWith(
                              color: AppTheme.primaryTextColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Expanded(child: SizedBox()),
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 55,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: CommonCard(
                        radius: 15,
                        child: CommonTextFieldView(
                          prefixIcon: Icon(Icons.search),
                          hintText: '  Sushi',
                          onTap: () {
                            // NavigationServices(context).gotoInSearchScreen();
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 8, bottom: 16, left: 20),
                      child: Row(
                        children: [
                          Text("1582 ",
                              style: TextStyles(context)
                                  .getDescriptionStyle()
                                  .copyWith(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: AppTheme.primaryColor)),
                          Text(" Results",
                              style: TextStyles(context)
                                  .getDescriptionStyle()
                                  .copyWith(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
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
            ],
          ),
        ),
      ),
    );
  }
}
