import 'package:flutter/material.dart';
import '../../constants/themes.dart';
import '../../utils/text_style.dart';
import '../../widgets/common_card.dart';
import '../../widgets/common_text_field_view.dart';
import '../../widgets/custom_appbar.dart';
// import 'package:dotted_border/dotted_border.dart';

class UploadNewRecipes extends StatefulWidget {
  const UploadNewRecipes({
    Key? key,
  }) : super(key: key);
  @override
  _UploadNewRecipesState createState() => _UploadNewRecipesState();
}

class _UploadNewRecipesState extends State<UploadNewRecipes> {
  TextEditingController recipeTitleController = TextEditingController();
  TextEditingController ingridentsController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 16, bottom: 16),
          child: Stack(
            children: [
              CustomAppBarView(
                centerWidget: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    Text(
                      "Upload recipe",
                      style: TextStyles(context).getTitle2Style().copyWith(
                          color: AppTheme.primaryTextColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          // NavigationServices(context)
                          //     .gotoUploadRecipeScreen();
                        });
                      },
                      child: Container(
                        height: 30,
                        decoration: BoxDecoration(
                            color: AppTheme.primaryColor.withOpacity(0.6),
                            borderRadius: BorderRadius.circular(100)),
                        child: Center(
                          child: Text("     Upload Recipe     ",
                              style: TextStyles(context)
                                  .getRegularStyle()
                                  .copyWith(
                                      fontSize: 14,
                                      color: AppTheme.whiteColor)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 68.0),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25, right: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CommonCard(
                          radius: 24,
                          child: Container(
                            width: MediaQuery.of(context).size.width - 40,
                            height: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                color: AppTheme.whiteColor),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.camera_alt,
                                  color: AppTheme.lightGrayTextColor,
                                ),
                                Text(" Upload Photo",
                                    style: TextStyles(context)
                                        .getDescriptionStyle()),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16, bottom: 16),
                          child: Text(
                            "Recipe title",
                            style:
                                TextStyles(context).getTitle2Style().copyWith(
                                      color: AppTheme.primaryTextColor,
                                    ),
                          ),
                        ),
                        CommonTextFieldView(
                          hintText: "    Dalgona Coff",
                          controller: recipeTitleController,
                          onChanged: (value) {
                            value = recipeTitleController.text;
                          },
                          keyboardType: TextInputType.emailAddress,
                          suffixIcon: Icon(
                            Icons.close,
                            color: AppTheme.lightGrayTextColor,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16, bottom: 16),
                          child: Text(
                            "Description",
                            style:
                                TextStyles(context).getTitle2Style().copyWith(
                                      color: AppTheme.primaryTextColor,
                                    ),
                          ),
                        ),
                        CommonTextFieldView(
                          hintText: "    Enter here",
                          controller: descriptionController,
                          onChanged: (value) {
                            value = descriptionController.text;
                          },
                          keyboardType: TextInputType.emailAddress,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16, bottom: 16),
                          child: Text(
                            "Time estimation",
                            style:
                                TextStyles(context).getTitle2Style().copyWith(
                                      color: AppTheme.primaryTextColor,
                                    ),
                          ),
                        ),
                        CommonTextFieldView(
                          hintText: "    Enter here",
                          controller: timeController,
                          onChanged: (value) {
                            value = timeController.text;
                          },
                          keyboardType: TextInputType.emailAddress,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16, bottom: 16),
                          child: Text(
                            "Ingridients",
                            style:
                                TextStyles(context).getTitle2Style().copyWith(
                                      color: AppTheme.primaryTextColor,
                                    ),
                          ),
                        ),
                        CommonTextFieldView(
                          hintText: "    Enter here",
                          controller: ingridentsController,
                          onChanged: (value) {
                            value = ingridentsController.text;
                          },
                          keyboardType: TextInputType.emailAddress,
                          suffixIcon: Icon(
                            Icons.delete_outline,
                            color: AppTheme.lightGrayTextColor,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16, bottom: 16),
                          child: CommonTextFieldView(
                            hintText: "    Enter here",
                            controller: ingridentsController,
                            onChanged: (value) {
                              value = ingridentsController.text;
                            },
                            keyboardType: TextInputType.emailAddress,
                            suffixIcon: Icon(
                              Icons.delete_outline,
                              color: AppTheme.lightGrayTextColor,
                            ),
                          ),
                        ),
                        CommonTextFieldView(
                          hintText: "    Enter here",
                          controller: ingridentsController,
                          onChanged: (value) {
                            value = ingridentsController.text;
                          },
                          keyboardType: TextInputType.emailAddress,
                          suffixIcon: Icon(
                            Icons.delete_outline,
                            color: AppTheme.lightGrayTextColor,
                          ),
                        ),
                      ],
                    ),
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
