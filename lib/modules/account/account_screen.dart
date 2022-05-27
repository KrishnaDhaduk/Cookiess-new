import 'package:flutter/material.dart';
import '../../constants/themes.dart';
import '../../utils/text_style.dart';
import '../../widgets/common_button.dart';
import '../../widgets/common_text_field_view.dart';
import '../../widgets/custom_appbar.dart';

class AccountScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  TextEditingController dobController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController pobController = TextEditingController();
  bool isMale = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Column(
            children: [
              CustomAppBarView(
                centerWidget: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          Navigator.pop(context);
                        });
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        size: 28,
                        color: AppTheme.primaryTextColor,
                      ),
                    ),
                    Expanded(child: SizedBox()),
                    Padding(
                      padding: const EdgeInsets.only(right: 40.0),
                      child: Text(
                        "Account",
                        style: TextStyles(context).getTitle2Style().copyWith(
                            color: AppTheme.primaryTextColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Expanded(child: SizedBox()),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24, left: 24, right: 20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text(
                          "Name",
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
                        keyboardType: TextInputType.emailAddress,
                        suffixIcon: Icon(
                          Icons.close,
                          color: AppTheme.lightGrayTextColor,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: Text(
                          "Email",
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
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: Text(
                          "Place of birth",
                          style: TextStyles(context).getTitle2Style().copyWith(
                                color: AppTheme.primaryTextColor,
                              ),
                        ),
                      ),
                      CommonTextFieldView(
                        hintText: "    Jakarta, Indonesia",
                        controller: pobController,
                        onChanged: (value) {
                          value = pobController.text;
                        },
                        keyboardType: TextInputType.emailAddress,
                        suffixIcon: Icon(
                          Icons.close,
                          color: AppTheme.lightGrayTextColor,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: Text(
                          "Date of birth",
                          style: TextStyles(context).getTitle2Style().copyWith(
                                color: AppTheme.primaryTextColor,
                              ),
                        ),
                      ),
                      CommonTextFieldView(
                        hintText: "    30 December 2000",
                        controller: dobController,
                        onChanged: (value) {
                          value = dobController.text;
                        },
                        keyboardType: TextInputType.emailAddress,
                        suffixIcon: Icon(
                          Icons.close,
                          color: AppTheme.lightGrayTextColor,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12, bottom: 10),
                        child: Text(
                          "Gender",
                          style: TextStyles(context).getTitle2Style().copyWith(
                                color: AppTheme.primaryTextColor,
                              ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width / 2.4,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: AppTheme.lightGrayTextColor
                                    .withOpacity(0.1)),
                            child: Center(
                                child: TextButton(
                              child: Text(
                                'Male',
                                style: TextStyles(context)
                                    .getRegularStyle()
                                    .copyWith(
                                        color: isMale
                                            ? AppTheme.lightGrayTextColor
                                            : AppTheme.primaryTextColor,
                                        fontWeight: FontWeight.w600),
                              ),
                              onPressed: () {
                                setState(() {
                                  setState(() {
                                    // isMale = !isMale;
                                  });
                                });
                              },
                            )),
                          ),
                          Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width / 2.4,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: AppTheme.lightGrayTextColor
                                    .withOpacity(0.1)),
                            child: Center(
                                child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Female',
                                style: TextStyles(context)
                                    .getRegularStyle()
                                    .copyWith(
                                        color: isMale
                                            ? AppTheme.lightGrayTextColor
                                            : AppTheme.primaryTextColor,
                                        fontWeight: FontWeight.w600),
                              ),
                            )),
                          ),
                        ],
                      ),
                      CommonButton(
                        padding: EdgeInsets.only(bottom: 24, top: 32),
                        buttonText: "Save Change",
                        radius: 16,
                        onTap: () {
                          setState(() {
                            Navigator.pop(context);
                          });
                        },
                        backgroundColor: AppTheme.primaryColor,
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
