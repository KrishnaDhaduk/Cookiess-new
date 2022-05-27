import 'package:flutter/material.dart';

import '../../constants/local_images_file.dart';
import '../../constants/themes.dart';
import '../../routes/route_names.dart';
import '../../utils/text_style.dart';
import '../../widgets/common_button.dart';
import '../../widgets/common_card.dart';
import '../../widgets/custom_appbar.dart';

class StepByStepScreen extends StatefulWidget {
  @override
  _StepByStepScreenState createState() => _StepByStepScreenState();
}

class _StepByStepScreenState extends State<StepByStepScreen> {
  bool _isSignUp = true;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 16, bottom: 16),
          child: Column(
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
                      width: MediaQuery.of(context).size.width / 12,
                    ),
                    Text(
                      'Direction',
                      style: TextStyles(context).getTitle2Style().copyWith(
                          color: AppTheme.primaryTextColor,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8, top: 8, left: 16),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: CommonCard(
                          radius: 26,
                          child: Container(
                            height: 180,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(26)),
                            child: Image(
                                image: AssetImage(
                                    LocalImagesFile.prepare_ingredients)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: CommonCard(
                          radius: 26,
                          child: Container(
                            height: 180,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(26)),
                            child: Image(
                                image: AssetImage(
                                    LocalImagesFile.prepare_ingredients2)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: CommonCard(
                          radius: 26,
                          child: Container(
                            height: 180,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(26)),
                            child: Image(
                                image: AssetImage(
                                    LocalImagesFile.prepare_ingredients)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      "Prepare the ingredients",
                      style: TextStyles(context).getTitleStyle(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Text(
                        "Prepare ingredients such as pasta, vegetables (according to your taste), prepare pasta sauce and meat. After all the ingredients are prepared wash all the ingredients with running water.",
                        style: TextStyles(context).getDescriptionStyle()),
                  ),
                  // Expanded(child: SizedBox()),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Text("Steps 1 ",
                            style: TextStyles(context).getRegularStyle()),
                        Text("of 12",
                            style: TextStyles(context)
                                .getRegularStyle()
                                .copyWith(color: AppTheme.lightGrayTextColor)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Container(
                      height: 12,
                      width: MediaQuery.of(context).size.width / 6,
                      decoration: BoxDecoration(
                        color: AppTheme.primaryColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  CommonButton(
                    padding: EdgeInsets.only(
                        left: 16, right: 16, bottom: 24, top: 32),
                    buttonText: "Next",
                    radius: 16,
                    onTap: () {
                      setState(() {
                        _isSignUp = !_isSignUp;
                        NavigationServices(context).gotoFinishCookingScreen();
                      });
                    },
                    backgroundColor: AppTheme.primaryColor,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
