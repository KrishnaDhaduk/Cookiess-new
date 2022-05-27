
import 'package:flutter/material.dart';

import '../../constants/local_images_file.dart';
import '../../routes/route_names.dart';
import '../../utils/text_style.dart';
import '../../widgets/common_card.dart';
import '../../widgets/common_text_field_view.dart';
import 'components/searchontainer.dart';

class InSearchScreen extends StatefulWidget {
  @override
  _InSearchScreenState createState() => _InSearchScreenState();
}

class _InSearchScreenState extends State<InSearchScreen> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Stack(
            children: [
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
                          hintText: '  Sush |',
                          onTap: () {
                            NavigationServices(context)
                                .gotoSearchResultScreen();
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 8, right: 8, bottom: 16, top: 16),
                      child: Text(
                        "Recipe",
                        style: TextStyles(context).getRegularStyle().copyWith(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text("Sushi Maki",
                          style: TextStyles(context)
                              .getDescriptionStyle()
                              .copyWith(fontSize: 16)),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                      child: Text("Sushi Timaki",
                          style: TextStyles(context)
                              .getDescriptionStyle()
                              .copyWith(fontSize: 16)),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                      child: Text("Sushi Uramaki",
                          style: TextStyles(context)
                              .getDescriptionStyle()
                              .copyWith(fontSize: 16)),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                      child: Text("Sushi Nigiri",
                          style: TextStyles(context)
                              .getDescriptionStyle()
                              .copyWith(fontSize: 16)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 20, bottom: 16, left: 8, right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Profile",
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
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SearchContainer(
                            recipe: "25 recipes",
                            name: "Sushi Lover",
                            color: Colors.pink[50],
                            image: LocalImagesFile.sushi_lover,
                          ),
                          SearchContainer(
                            recipe: "25 recipes",
                            name: "Sushi Boy",
                            color: Colors.blueAccent[50],
                            image: LocalImagesFile.sushi_boy,
                          ),
                          SearchContainer(
                            recipe: "8 recipes",
                            name: "Sushi Heart",
                            color: Colors.pink[50],
                            image: LocalImagesFile.sushi_heart,
                          ),
                        ],
                      ),
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
