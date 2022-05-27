import 'package:flutter/material.dart';
import '../../../constants/local_images_file.dart';
import '../../../constants/themes.dart';
import '../../../routes/route_names.dart';
import '../../../utils/text_style.dart';
import '../../home/components/rating_container.dart';
import 'recipe_widget.dart';

class CollaborationScreenDetails extends StatefulWidget {
  @override
  _CollaborationScreenDetailsState createState() =>
      _CollaborationScreenDetailsState();
}

class _CollaborationScreenDetailsState
    extends State<CollaborationScreenDetails> {
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
              LocalImagesFile.collaboration1,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 32,
            top: 130,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 4.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.podcasts_outlined,
                        color: AppTheme.dangerColor,
                        size: 22,
                      ),
                      Text('  Ongoing',
                          style: TextStyles(context).getRegularStyle().copyWith(
                                fontSize: 18,
                                color: AppTheme.dangerColor,
                              )),
                    ],
                  ),
                ),
                Text("Vagetable Salad",
                    style: TextStyles(context).getRegularStyle().copyWith(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: AppTheme.backColor,
                        )),
              ],
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
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                size: 28,
                color: AppTheme.primaryTextColor,
              ),
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
                            left: 8, right: 16, bottom: 4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("👩‍🍳  4 Recipes",
                                style: TextStyles(context)
                                    .getRegularStyle()
                                    .copyWith(fontWeight: FontWeight.w400)),
                            Text("7 more days",
                                style: TextStyles(context)
                                    .getRegularStyle()
                                    .copyWith(fontWeight: FontWeight.w300)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 8,
                          width: MediaQuery.of(context).size.width / 5,
                          decoration: BoxDecoration(
                              color: AppTheme.primaryColor,
                              borderRadius: BorderRadius.circular(100)),
                        ),
                      ),
                      Row(
                        children: [
                          RatingContainer(),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              '  ' + '8 participants',
                              style: TextStyles(context)
                                  .getRegularStyle()
                                  .copyWith(
                                      color: AppTheme.primaryColor,
                                      fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 8.0, bottom: 8, top: 16),
                        child: Text(
                          'Description',
                          style: TextStyles(context).getRegularStyle().copyWith(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 8.0, bottom: 8, right: 16),
                        child: Text(
                          'In this collaboration event, I as the organizer will present an event entitled vegetable salad. If you have an accurate recipe for this...Read more ',
                          style: TextStyles(context)
                              .getDescriptionStyle()
                              .copyWith(
                                fontWeight: FontWeight.w300,
                              ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 16, right: 16, left: 8, bottom: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Recipes',
                              style: TextStyles(context)
                                  .getRegularStyle()
                                  .copyWith(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  NavigationServices(context)
                                      .gotoUploadRecipeScreen();
                                });
                              },
                              child: Container(
                                height: 35,
                                decoration: BoxDecoration(
                                    color: AppTheme.primaryColor,
                                    borderRadius: BorderRadius.circular(100)),
                                child: Center(
                                  child: Text("    Upload Recipe    ",
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
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 460.0, left: 16),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ReceipeWidget(
                      time: '15 min',
                      recipeName: 'Mayo Salad',
                      serve: '1',
                      image1: LocalImagesFile.mayo_salad,
                      personImage: LocalImagesFile.person_gabrial,
                      personName: 'Gabriel'),
                  SizedBox(
                    height: 16,
                  ),
                  ReceipeWidget(
                      time: '35 min',
                      recipeName: 'Salad With Shrimp',
                      serve: '2',
                      image1: LocalImagesFile.salad_with_shrimp,
                      personImage: LocalImagesFile.perosn_samantha,
                      personName: 'Gabriel'),
                  SizedBox(
                    height: 16,
                  ),
                  ReceipeWidget(
                      time: '15 min',
                      recipeName: 'Mayo Salad',
                      serve: '1',
                      image1: LocalImagesFile.mayo_salad,
                      personImage: LocalImagesFile.person_gabrial,
                      personName: 'Gabriel'),
                  SizedBox(
                    height: 100,
                  ),
                  ReceipeWidget(
                      time: '15 min',
                      recipeName: 'Mayo Salad',
                      serve: '1',
                      image1: LocalImagesFile.mayo_salad,
                      personImage: LocalImagesFile.person_gabrial,
                      personName: 'Gabriel'),
                  SizedBox(
                    height: 16,
                  ),
                  ReceipeWidget(
                      time: '35 min',
                      recipeName: 'Salad With Shrimp',
                      serve: '2',
                      image1: LocalImagesFile.salad_with_shrimp,
                      personImage: LocalImagesFile.perosn_samantha,
                      personName: 'Gabriel'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
