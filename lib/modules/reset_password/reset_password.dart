
import 'package:flutter/material.dart';

import '../../constants/themes.dart';
import '../../routes/route_names.dart';
import '../../utils/text_style.dart';
import '../../widgets/common_button.dart';
import '../../widgets/common_text_field_view.dart';

class ResetPassword extends StatefulWidget {
  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword>
    with TickerProviderStateMixin {
  // late AnimationController controller = AnimationController(vsync: this);
  // @override
  // void initState() {
  //   controller = AnimationController(
  //     vsync: this,
  //     duration: const Duration(seconds: 5),
  //   )..addListener(() {
  //       setState(() {});
  //     });
  //   controller.repeat(reverse: true);
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   controller.dispose();
  //   super.dispose();
  // }

  // bool _isSignUp = true;
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
                  "Reset Password",
                  style: TextStyles(context).getTitleStyle(),
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 60,
                    ),
                    Text(
                      "This will change the password for the email Haileesteinfield@gmail.com",
                      style: TextStyles(context).getSubTitleStyle().copyWith(
                            color: AppTheme.lightGrayTextColor,
                          ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 24, bottom: 16),
                      child: Text(
                        "New Password",
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
                      padding: const EdgeInsets.only(top: 24, bottom: 16),
                      child: Text(
                        "Confirm Password",
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
                      padding: const EdgeInsets.only(top: 24, bottom: 24),
                      child: Row(
                        children: [
                          Text(
                            "Password Strength",
                            style: TextStyles(context)
                                .getTitle2Style()
                                .copyWith(
                                    color: AppTheme.primaryTextColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                          ),
                          Expanded(child: SizedBox()),
                          Text(
                            "Strong 😎",
                            style: TextStyles(context)
                                .getTitle2Style()
                                .copyWith(
                                    color: AppTheme.primaryColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    // LinearProgressIndicator(
                    //   value: controller.value,
                    //   semanticsLabel: 'Linear progress indicator',
                    //   color: AppTheme.primaryColor,
                    // ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: Container(
                        height: 8,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: AppTheme.primaryColor,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    Text(
                      "Your password is strong, nice work!",
                      style: TextStyles(context).getSubTitleStyle().copyWith(
                            color: AppTheme.lightGrayTextColor,
                          ),
                    ),
                    CommonButton(
                      padding: EdgeInsets.only(bottom: 32, top: 32),
                      buttonText: "Reset Password",
                      radius: 16,
                      onTap: () {
                        setState(() {
                          // _isSignUp = !_isSignUp;
                          NavigationServices(context)
                              .gotoAccountVerificationScreen();
                        });
                      },
                      backgroundColor: AppTheme.primaryColor,
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
