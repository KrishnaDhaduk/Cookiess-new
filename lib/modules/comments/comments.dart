import 'package:flutter/material.dart';
import '../../constants/local_images_file.dart';
import '../../constants/themes.dart';
import '../../utils/text_style.dart';
import '../../widgets/custom_appbar.dart';
import 'components/comments_container.dart';

class CommentsScreen extends StatefulWidget {
  @override
  _CommentsScreenState createState() => _CommentsScreenState();
}

class _CommentsScreenState extends State<CommentsScreen> {
  TextEditingController commentController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 16, bottom: 16, right: 16),
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
                    Text(
                      "Comments",
                      style: TextStyles(context).getTitle2Style().copyWith(
                          color: AppTheme.primaryTextColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                    Expanded(child: SizedBox()),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12, top: 8),
                child: Column(
                  children: [
                    CommentsContainer(
                      image: LocalImagesFile.laura_harper,
                      description: "This is great!! thank you so much",
                      name: "Aini Febiya",
                      time: "2 days ago",
                    ),
                    CommentsContainer(
                      image: LocalImagesFile.melina,
                      description:
                          "I added a little flavoring and it tastes really good, you should try it",
                      name: "Melina",
                      time: "3 days ago",
                    ),
                    CommentsContainer(
                      image: LocalImagesFile.json,
                      description:
                          "This recipe is very delicious, with ingredients that are easy to get, I think anyone can make itThis recipe is very delicious, with ingredients that are easy to get, I think anyone can make it",
                      name: "Json",
                      time: "4 days ago",
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: CircleAvatar(
                              radius: 30,
                              child: Image(
                                image: AssetImage(LocalImagesFile.laura_harper),
                              ),
                            )),
                        Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width / 1.7,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color:
                                  AppTheme.lightGrayTextColor.withOpacity(0.1)),
                          child: Padding(
                            padding: const EdgeInsets.only(right: 48.0),
                            child: Center(
                              child: Text(
                                'Type your comment',
                                style: TextStyles(context)
                                    .getRegularStyle()
                                    .copyWith(
                                        color: AppTheme.lightGrayTextColor,
                                        fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: AppTheme.primaryColor,
                          child: Icon(
                            Icons.send_rounded,
                            color: AppTheme.whiteColor,
                            size: 20,
                          ),
                        )
                      ],
                    )
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
