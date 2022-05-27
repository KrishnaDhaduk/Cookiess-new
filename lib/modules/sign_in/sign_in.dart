import 'package:flutter/material.dart';

import '../../constants/local_images_file.dart';
import '../../constants/themes.dart';
import '../../routes/route_names.dart';
import '../../utils/text_style.dart';
import '../../widgets/common_button.dart';
import '../../widgets/common_text_field_view.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
                  "Welcome",
                  style: TextStyles(context).getTitleStyle(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Enter your Phone number or Email \naddress for sign in",
                        style: TextStyles(context).getSubTitleStyle().copyWith(
                              color: AppTheme.lightGrayTextColor,
                            ),
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
                        hintText: "    showthepassword",
                        controller: passwordController,
                        onChanged: (value) {
                          value = passwordController.text;
                        },
                        isObscureText: true,
                        keyboardType: TextInputType.visiblePassword,
                        suffixIcon: Icon(
                          Icons.remove_red_eye,
                          color: AppTheme.lightGrayTextColor,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 8, right: 8, top: 24.0, bottom: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          // crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(child: SizedBox()),
                            Text(
                              "Remember me",
                              style: TextStyles(context)
                                  .getRegularStyle()
                                  .copyWith(
                                    color: AppTheme.lightGrayTextColor
                                        .withOpacity(0.8),
                                  ),
                            ),
                            Expanded(child: SizedBox()),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  NavigationServices(context)
                                      .gotoForgotPasswordScreen();
                                });
                              },
                              child: Text(
                                "Forgot password?",
                                style: TextStyles(context)
                                    .getRegularStyle()
                                    .copyWith(
                                      color: AppTheme.lightGrayTextColor
                                          .withOpacity(0.8),
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      CommonButton(
                        padding: EdgeInsets.only(bottom: 32, top: 16),
                        buttonText: "Login",
                        radius: 16,
                        onTap: () {
                          setState(() {
                            _isSignUp = !_isSignUp;
                            NavigationServices(context)
                                .gotoForgotPasswordScreen();
                          });
                        },
                        backgroundColor: AppTheme.primaryColor,
                      ),
                      Row(
                        children: [
                          Text(
                            "Don't have account? ",
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
                              "Create Account",
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
                        padding: const EdgeInsets.only(
                            left: 8, right: 8, top: 24, bottom: 16.0),
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
                        padding: EdgeInsets.only(bottom: 8, top: 8),
                        // buttonText: "SIGN UP WITH GOOGLE",
                        radius: 16,
                        onTap: () {
                          setState(() {
                            NavigationServices(context).gotoSignInScreen();
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
                            NavigationServices(context).gotoSignInScreen();
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
