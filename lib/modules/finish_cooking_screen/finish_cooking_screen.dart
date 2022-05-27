import 'package:flutter/material.dart';

import '../../constants/local_images_file.dart';
import '../../constants/themes.dart';
import '../../routes/route_names.dart';
import '../../utils/text_style.dart';
import '../../widgets/common_button.dart';

class FinishCookingScreen extends StatefulWidget {
  @override
  _FinishCookingScreenState createState() => _FinishCookingScreenState();
}

class _FinishCookingScreenState extends State<FinishCookingScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 365,
                child: Image(image: AssetImage(LocalImagesFile.finish_recipe))),
            Padding(
              padding: const EdgeInsets.only(bottom: 16, top: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Horay! ",
                    style: TextStyles(context)
                        .getSplashTitleStyle()
                        .copyWith(fontSize: 30, color: AppTheme.backColor),
                  ),
                  Text(
                    "🎉",
                    style: TextStyles(context)
                        .getSplashTitleStyle()
                        .copyWith(fontSize: 40, color: AppTheme.backColor),
                  ),
                ],
              ),
            ),
            Text("All steps have been completed,",
                style: TextStyles(context)
                    .getDescriptionStyle()
                    .copyWith(fontSize: 20)),
            Text("enjoy your meal!",
                style: TextStyles(context)
                    .getDescriptionStyle()
                    .copyWith(fontSize: 20)),
            CommonButton(
              padding: EdgeInsets.only(left: 24, right: 24, top: 48),
              buttonText: "Completed",
              radius: 16,
              onTap: () {
                setState(() {
                  NavigationServices(context).gotogotoProfile1Screen();
                });
              },
              backgroundColor: AppTheme.primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
