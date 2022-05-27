import 'package:flutter/material.dart';

import '../../constants/local_images_file.dart';
import '../../constants/themes.dart';
import '../../routes/route_names.dart';
import '../../utils/text_style.dart';
import '../../widgets/common_button.dart';
import '../../widgets/common_text_field_view.dart';

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  bool _isSignUp = true;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 16.0, right: 16, top: 24, bottom: 16),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Text(
                  "Create Account",
                  style: TextStyles(context).getTitleStyle(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Enter your name, email and password",
                        style: TextStyles(context).getSubTitleStyle().copyWith(
                              color: AppTheme.lightGrayTextColor,
                            ),
                      ),
                      Row(
                        children: [
                          Text(
                            "for sign up.",
                            style:
                                TextStyles(context).getSubTitleStyle().copyWith(
                                      color: AppTheme.lightGrayTextColor,
                                    ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                NavigationServices(context).gotoSignInScreen();
                              });
                            },
                            child: Text(
                              " Already have account?",
                              style: TextStyles(context)
                                  .getSubTitleStyle()
                                  .copyWith(
                                    color: AppTheme.primaryColor,
                                  ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 24, bottom: 16),
                        child: Text(
                          "Full Name",
                          style: TextStyles(context).getTitle2Style().copyWith(
                                color: AppTheme.primaryTextColor,
                              ),
                        ),
                      ),
                      CommonTextFieldView(
                        hintText: "    Laura Harper",
                        controller: nameController,
                        onChanged: (value) {
                          value = nameController.text;
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 24, bottom: 16),
                        child: Text(
                          "Email address",
                          style: TextStyles(context).getTitle2Style().copyWith(
                                color: AppTheme.primaryTextColor,
                              ),
                        ),
                      ),
                      CommonTextFieldView(
                        hintText: "    lauraharper@gmail.com",
                        controller: emailController,
                        onChanged: (value) {
                          value = emailController.text;
                        },
                        keyboardType: TextInputType.emailAddress,
                        suffixIcon: Icon(
                          Icons.done,
                          color: AppTheme.primaryColor,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 24, bottom: 16),
                        child: Text(
                          "Password",
                          style: TextStyles(context).getTitle2Style().copyWith(
                                color: AppTheme.primaryTextColor,
                              ),
                        ),
                      ),
                      CommonTextFieldView(
                        hintText: "    password",
                        controller: passwordController,
                        onChanged: (value) {
                          value = passwordController.text;
                        },
                        isObscureText: true,
                        keyboardType: TextInputType.visiblePassword,
                        suffixIcon: Icon(
                          Icons.close,
                          color: AppTheme.lightGrayTextColor,
                        ),
                      ),
                      CommonButton(
                        padding: EdgeInsets.only(top: 24, bottom: 24),
                        buttonText: "Sign up",
                        radius: 16,
                        onTap: () {
                          setState(() {
                            _isSignUp = !_isSignUp;
                            NavigationServices(context).gotoSignInScreen();
                          });
                        },
                        backgroundColor: AppTheme.primaryColor,
                      ),
                      Row(
                        children: [
                          Text(
                            "By signing up youre agree to our",
                            style:
                                TextStyles(context).getSubTitleStyle().copyWith(
                                      color: AppTheme.lightGrayTextColor,
                                    ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {});
                            },
                            child: Text(
                              " Terms",
                              style: TextStyles(context)
                                  .getSubTitleStyle()
                                  .copyWith(
                                    color: AppTheme.primaryColor,
                                  ),
                            ),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {});
                        },
                        child: Text(
                          "Conditions & Privacy Policy",
                          style:
                              TextStyles(context).getSubTitleStyle().copyWith(
                                    color: AppTheme.primaryColor,
                                  ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 8, right: 8, top: 16, bottom: 16.0),
                        child: Row(
                          children: [
                            Expanded(
                                child: Divider(
                              color:
                                  AppTheme.lightGrayTextColor.withOpacity(0.5),
                              thickness: 1.6,
                            )),
                            Text(
                              "    or continue with    ",
                              style: TextStyles(context)
                                  .getSubTitleStyle()
                                  .copyWith(
                                    color: AppTheme.lightGrayTextColor,
                                  ),
                            ),
                            Expanded(
                                child: Divider(
                              color:
                                  AppTheme.lightGrayTextColor.withOpacity(0.5),
                              thickness: 1.6,
                            )),
                          ],
                        ),
                      ),
                      CommonButton(
                        buttonTextWidget: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 40),
                              child: Container(
                                  height: 35,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: AppTheme.whiteColor,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Image(
                                      image: AssetImage(
                                          LocalImagesFile.Google__G__Logo))),
                            ),
                            Center(
                              child: Text(
                                'SIGN UP WITH GOOGLE',
                                style: TextStyles(context)
                                    .getRegularStyle()
                                    .copyWith(
                                      color: AppTheme.whiteColor,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                    ),
                              ),
                            ),
                          ],
                        ),
                        padding: EdgeInsets.only(top: 24, bottom: 24),
                        radius: 16,
                        onTap: () {
                          setState(() {
                            NavigationServices(context)
                                .gotoCreateAccountScreen();
                          });
                        },
                        backgroundColor: AppTheme.googleColor,
                      ),
                      CommonButton(
                        buttonTextWidget: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 40),
                              child: Container(
                                  height: 35,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: AppTheme.whiteColor,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Image(
                                      image: AssetImage(
                                          LocalImagesFile.Facebook_f_logo_))),
                            ),
                            Center(
                              child: Text(
                                'SIGN UP WITH FACEBOOK',
                                style: TextStyles(context)
                                    .getRegularStyle()
                                    .copyWith(
                                      color: AppTheme.whiteColor,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                    ),
                              ),
                            ),
                          ],
                        ),
                        padding: EdgeInsets.only(bottom: 32, top: 8),
                        radius: 16,
                        onTap: () {
                          setState(() {
                            NavigationServices(context)
                                .gotoCreateAccountScreen();
                          });
                        },
                        backgroundColor: AppTheme.facebookColor,
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
