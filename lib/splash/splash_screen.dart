import 'package:flutter/material.dart';
import '../constants/local_images_file.dart';
import '../constants/themes.dart';
import '../routes/route_names.dart';
import '../utils/text_style.dart';
import '../widgets/common_button.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  bool isProccess = true;
  bool _isRegister = true;
  bool _isSignin = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(LocalImagesFile.onboarding_screen,
                    fit: BoxFit.fill),
              ),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Colors.grey.withOpacity(0.03),
                            Colors.grey.withOpacity(0.03),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          stops: [0.0, 0.7]),
                    ),
                    child: Text(
                      "    Cooking with \n great experiences",
                      style: TextStyles(context).getSplashTitleStyle(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 64.0, right: 64, top: 16, bottom: 8),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Colors.grey.withOpacity(0.03),
                              Colors.grey.withOpacity(0.03),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            stops: [0.0, 0.7]),
                      ),
                      child: Text(
                        "  The best experience is given \n based on the ingredients you \n            have at home",
                        style: TextStyles(context).getSubTitleStyle(),
                      ),
                    ),
                  ),
                  CommonButton(
                    padding: EdgeInsets.only(
                        top: 16, bottom: 16, left: 24, right: 24),
                    buttonText: "Register",
                    radius: 15,
                    onTap: () {
                      setState(() {
                        // _isRegister = !_isRegister;
                        NavigationServices(context).gotoCreateAccountScreen();
                      });
                    },
                    backgroundColor: _isRegister
                        ? AppTheme.primaryColor
                        : Colors.transparent,
                  ),
                  CommonButton(
                    padding: EdgeInsets.only(
                        top: 8, bottom: 16, left: 24, right: 24),
                    radius: 15,
                    buttonText: "Sign in",
                    onTap: () {
                      setState(() {
                        // _isSignin = !_isSignin;
                      });
                    },
                    backgroundColor:
                        _isSignin ? AppTheme.primaryColor : Colors.transparent,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
