
import 'package:flutter/material.dart';
import '../../constants/local_images_file.dart';
import '../../constants/themes.dart';
import '../../routes/route_names.dart';
import '../../utils/text_style.dart';
import '../../widgets/common_text_field_view.dart';
import '../../widgets/custom_appbar.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController nameController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 16, bottom: 16, right: 16),
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
                      "Edit Profile",
                      style: TextStyles(context).getTitle2Style().copyWith(
                          color: AppTheme.primaryTextColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          NavigationServices(context).gotoCommentsScreen();
                        });
                      },
                      child: Container(
                        height: 30,
                        decoration: BoxDecoration(
                            color: AppTheme.primaryColor.withOpacity(0.7),
                            borderRadius: BorderRadius.circular(100)),
                        child: Center(
                          child: Text("     Save     ",
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
                padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 45,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image(
                                    image: AssetImage(
                                        LocalImagesFile.laura_harper))),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: CircleAvatar(
                                backgroundColor: AppTheme.primaryColor,
                                radius: 16,
                                child: Icon(
                                  Icons.edit,
                                  color: AppTheme.whiteColor,
                                  size: 20,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16, bottom: 16),
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
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16, bottom: 16),
                      child: Text(
                        "Username",
                        style: TextStyles(context).getTitle2Style().copyWith(
                              color: AppTheme.primaryTextColor,
                            ),
                      ),
                    ),
                    CommonTextFieldView(
                      hintText: "    @lauraharper",
                      controller: userNameController,
                      onChanged: (value) {
                        value = userNameController.text;
                      },
                      keyboardType: TextInputType.emailAddress,
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
