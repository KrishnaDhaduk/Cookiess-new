
import 'package:flutter/material.dart';

import '../../constants/local_images_file.dart';
import '../../constants/themes.dart';
import '../../routes/route_names.dart';
import '../../utils/text_style.dart';
import '../../widgets/common_card.dart';
import '../../widgets/common_text_field_view.dart';
import '../../widgets/custom_appbar.dart';
import 'components/search_category_container.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Stack(
            children: [
              CustomAppBarView(
                leftWidget: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    size: 28,
                    color: AppTheme.primaryTextColor,
                  ),
                ),
                centerWidget: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                    ),
                    Text(
                      'Search',
                      style: TextStyles(context).getTitle2Style().copyWith(
                          color: AppTheme.primaryTextColor,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
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
                      padding: const EdgeInsets.all(8.0),
                      child: CommonCard(
                        radius: 15,
                        child: CommonTextFieldView(
                          prefixIcon: Icon(Icons.search),
                          suffixIcon: Icon(Icons.close),
                          hintText: '  Type for find recipes.',
                          onTap: () {
                            NavigationServices(context).gotoInSearchScreen();
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Recently Search",
                            style: TextStyles(context)
                                .getRegularStyle()
                                .copyWith(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          GestureDetector(
                            onTap: () {
                              NavigationServices(context)
                                  .gotoUploadRecipeScreen();
                            },
                            child: Text(
                              "delete all",
                              style: TextStyles(context)
                                  .getDescriptionStyle()
                                  .copyWith(fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Burger",
                              style: TextStyles(context)
                                  .getDescriptionStyle()
                                  .copyWith(fontSize: 16)),
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.close,
                              color: AppTheme.lightGrayTextColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Sandwich",
                              style: TextStyles(context)
                                  .getDescriptionStyle()
                                  .copyWith(fontSize: 16)),
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.close,
                              color: AppTheme.lightGrayTextColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Cheesecake",
                              style: TextStyles(context)
                                  .getDescriptionStyle()
                                  .copyWith(fontSize: 16)),
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.close,
                              color: AppTheme.lightGrayTextColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 16, bottom: 16, left: 8, right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Categories",
                            style: TextStyles(context)
                                .getRegularStyle()
                                .copyWith(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          GestureDetector(
                            onTap: () {
                              NavigationServices(context)
                                  .gotoUploadRecipeScreen();
                            },
                            child: Text(
                              "see all",
                              style: TextStyles(context)
                                  .getDescriptionStyle()
                                  .copyWith(fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SearchCategoryContainer(
                      color1: Colors.orangeAccent.withOpacity(0.4),
                      color2: Colors.orangeAccent.withOpacity(0.7),
                      ImageName: LocalImagesFile.noodle,
                      categoryName: "Noodle",
                    ),
                    SearchCategoryContainer(
                      color1: Colors.pinkAccent.withOpacity(0.4),
                      color2: Colors.pinkAccent.withOpacity(0.7),
                      ImageName: LocalImagesFile.dessert,
                      categoryName: "Dessert",
                    ),
                    SearchCategoryContainer(
                      color1: Colors.greenAccent.withOpacity(0.4),
                      color2: Colors.greenAccent.withOpacity(0.7),
                      ImageName: LocalImagesFile.vagetable_salad1,
                      categoryName: "Salad",
                    )
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
