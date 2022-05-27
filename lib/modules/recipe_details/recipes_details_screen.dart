import 'package:flutter/material.dart';
import '../../constants/local_images_file.dart';
import '../../constants/themes.dart';
import '../../routes/route_names.dart';
import '../../utils/text_style.dart';
import '../../widgets/common_button.dart';
import 'components/recipe_ingridents_container.dart';

class RecipeDetailsScreen extends StatefulWidget {
  @override
  _RecipeDetailsScreenState createState() => _RecipeDetailsScreenState();
}

class _RecipeDetailsScreenState extends State<RecipeDetailsScreen> {
  bool onSave = false;
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
                    Colors.grey.withOpacity(0.0),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.0, 0.7]),
            ),
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              LocalImagesFile.vegetable_pasta,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Image.asset(
              LocalImagesFile.vegetable_salad,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: 16.0, top: 16 + MediaQuery.of(context).padding.top),
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
                    Icons.bookmark_outline,
                    size: 28,
                    color: onSave ? AppTheme.primaryColor : AppTheme.whiteColor,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      onSave = !onSave;
                    });
                  },
                  icon: Icon(
                    Icons.more_vert,
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
                top: 210 + MediaQuery.of(context).padding.top - 24,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 8.0, bottom: 8, top: 16),
                        child: Text(
                          'Vagetable Pasta',
                          style: TextStyles(context).getRegularStyle().copyWith(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 8.0, right: 16, left: 4, bottom: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 18,
                              backgroundColor: Colors.pink[50],
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child:
                                      Image.asset(LocalImagesFile.tania_adoms)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: Column(
                                children: [
                                  Text(
                                    'Tania Adoms',
                                    style: TextStyles(context)
                                        .getRegularStyle()
                                        .copyWith(
                                            color: AppTheme.primaryColor,
                                            fontSize: 18),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 8, right: 16),
                                    child: Text(
                                      'on 9 Dec 2021',
                                      style: TextStyles(context)
                                          .getDescriptionStyle()
                                          .copyWith(
                                            fontWeight: FontWeight.w300,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(child: SizedBox()),
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
                                  child: Text("     follow     ",
                                      style: TextStyles(context)
                                          .getRegularStyle()
                                          .copyWith(
                                              color: AppTheme.whiteColor)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.alarm,
                            size: 22,
                            color: AppTheme.lightGrayTextColor,
                          ),
                          Text(
                            '     30 min     ',
                            style: TextStyles(context)
                                .getDescriptionStyle()
                                .copyWith(
                                  fontWeight: FontWeight.w300,
                                ),
                          ),
                          Icon(
                            Icons.person,
                            size: 22,
                            color: AppTheme.lightGrayTextColor,
                          ),
                          Text(
                            '2 serve',
                            style: TextStyles(context)
                                .getDescriptionStyle()
                                .copyWith(
                                  fontWeight: FontWeight.w300,
                                ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          'Pasta mixed with fresh vegetables and doused with a delicious sauce with a high taste, this food is rich in nutrients and is very suitable for... Read more',
                          style: TextStyles(context)
                              .getDescriptionStyle()
                              .copyWith(
                                fontWeight: FontWeight.w300,
                              ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 16, right: 16, bottom: 16),
                        child: Text(
                          'Ingridents (8)',
                          style: TextStyles(context).getRegularStyle().copyWith(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 448.0, left: 16),
            child: SingleChildScrollView(
              child: Stack(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                        child: RecipeIngridentsContainer(
                          name: 'Vagetable',
                          quantity: '6 slides',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                        child: RecipeIngridentsContainer(
                          name: 'Pasta',
                          quantity: '1 Pack',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                        child: RecipeIngridentsContainer(
                          name: 'Cumin',
                          quantity: '5 slice',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                        child: RecipeIngridentsContainer(
                          name: 'Black Paper',
                          quantity: '3/4 Tea spoon',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                        child: RecipeIngridentsContainer(
                          name: 'Vagetable',
                          quantity: '6 slides',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                        child: RecipeIngridentsContainer(
                          name: 'Pasta',
                          quantity: '1 Pack',
                        ),
                      ),
                      SizedBox(height: 100)
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 24,
            left: 16,
            right: 16,
            child: CommonButton(
              radius: 12,
              buttonText: "Let's Cook",
              onTap: () {
                NavigationServices(context).gotoStepByStepScreen();
              },
            ),
          ),
        ],
      ),
    );
  }
}
