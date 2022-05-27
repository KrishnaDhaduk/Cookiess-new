
import 'package:flutter/material.dart';

import '../../constants/themes.dart';
import '../../routes/route_names.dart';
import '../../utils/text_style.dart';
import '../../widgets/common_button.dart';
import '../../widgets/custom_appbar.dart';

class ResetEmail extends StatefulWidget {
  @override
  _ResetEmailState createState() => _ResetEmailState();
}

class _ResetEmailState extends State<ResetEmail> {
  bool _isSignUp = true;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
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
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16, top: 16),
                      child: Text(
                        "Email Sent",
                        style: TextStyles(context).getTitleStyle(),
                      ),
                    ),
                    Text(
                      "not receiving email? check on promotion ",
                      style: TextStyles(context).getSubTitleStyle().copyWith(
                            color: AppTheme.lightGrayTextColor,
                          ),
                    ),
                    Row(
                      children: [
                        Text(
                          "page, spam.",
                          style:
                              TextStyles(context).getSubTitleStyle().copyWith(
                                    color: AppTheme.lightGrayTextColor,
                                  ),
                        ),
                        Text(
                          " Having problem?",
                          style:
                              TextStyles(context).getSubTitleStyle().copyWith(
                                    color: AppTheme.primaryColor,
                                  ),
                        ),
                      ],
                    ),
                    CommonButton(
                      padding: EdgeInsets.only(bottom: 32, top: 32),
                      buttonText: "Resend",
                      radius: 16,
                      onTap: () {
                        setState(() {
                          _isSignUp = !_isSignUp;
                          NavigationServices(context).gotoResetPasswordScreen();
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
