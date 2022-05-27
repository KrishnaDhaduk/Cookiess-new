
import 'package:flutter/material.dart';

import '../../constants/themes.dart';
import '../../routes/route_names.dart';
import '../../utils/text_style.dart';
import '../../widgets/common_button.dart';
import '../../widgets/common_text_field_view.dart';
import '../../widgets/custom_appbar.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
                      width: MediaQuery.of(context).size.width / 12,
                    ),
                    Text(
                      'Forgot Password',
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
                      padding: const EdgeInsets.only(bottom: 16, top: 16),
                      child: Text(
                        "Forgot Password",
                        style: TextStyles(context).getTitleStyle(),
                      ),
                    ),
                    Text(
                      "Enter your email address and we will send you a reset instructions.",
                      style: TextStyles(context).getSubTitleStyle().copyWith(
                            color: AppTheme.lightGrayTextColor,
                          ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40, bottom: 16),
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
                        Icons.close,
                        color: AppTheme.lightGrayTextColor,
                      ),
                    ),
                    CommonButton(
                      padding: EdgeInsets.only(bottom: 32, top: 32),
                      buttonText: "Reset password",
                      radius: 16,
                      onTap: () {
                        setState(() {
                          NavigationServices(context).gotoResetEmailScreen();
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
