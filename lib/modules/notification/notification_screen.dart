import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import '../../constants/local_images_file.dart';
import '../../constants/themes.dart';
import '../../logic/providers/theme_provider.dart';
import '../../utils/text_style.dart';
import '../../widgets/custom_appbar.dart';
import 'notification_review_contaainer.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Consumer<ThemeProvider>(
          builder: (_, provider, child) {
            var padding2 = Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
              child: Divider(
                thickness: 1,
              ),
            );
            return Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: CustomAppBarView(
                    leftWidget: IconButton(
                        onPressed: () {
                          setState(() {
                            Navigator.pop(context);
                          });
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          size: 26,
                          color: AppTheme.primaryTextColor,
                        )),
                    centerWidget: Center(
                      child: Text(
                        'Notifications',
                        style: TextStyles(context).getTitle2Style().copyWith(
                            color: AppTheme.primaryTextColor,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                    rightWidget: IconButton(
                        onPressed: () {
                          // NavigationServices(context).gotoNotificationScreencreen();
                        },
                        icon: Icon(
                          Icons.more_vert,
                          size: 26,
                          color: AppTheme.primaryTextColor,
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 80.0),
                  child: SingleChildScrollView(
                    child: (Column(
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width,
                              color:
                                  AppTheme.lightGrayTextColor.withOpacity(0.1),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 12.0, left: 24),
                                child: Text(
                                  'Newest',
                                  style: TextStyles(context)
                                      .getTitle2Style()
                                      .copyWith(
                                          color: AppTheme.lightGrayTextColor,
                                          fontWeight: FontWeight.normal),
                                ),
                              ),
                            ),
                            NotificationReviewContainer(
                                isOnline: true,
                                color: Colors.blue,
                                image: LocalImagesFile.person_daniel,
                                photoBGColor: Colors.blue[50]!,
                                icon: Icons.chat_outlined,
                                line1: 'comments on your receipe:',
                                line2:
                                    "it's beyond my expectations, it'so \ndelicious",
                                personName: 'Daniel ',
                                time: '  1h ago'),
                            padding2,
                            NotificationReviewContainer(
                                isOnline: true,
                                color: AppTheme.dangerColor,
                                image: LocalImagesFile.person_mia,
                                photoBGColor: Colors.indigo[100]!,
                                icon: Icons.email,
                                line1: 'mentioned you in comments:',
                                line2: "you can add more cheese on...",
                                personName: 'Mia ',
                                time: '  4h ago'),
                            padding2,
                            NotificationReviewContainer(
                                isOnline: true,
                                color: Colors.yellow,
                                image: LocalImagesFile.person_jack,
                                photoBGColor: Colors.pink[100]!,
                                icon: Icons.person_add_outlined,
                                line1: 'started following you',
                                line2: "",
                                personName: 'Jack ',
                                time: '  1d ago'),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, bottom: 8),
                              child: Container(
                                height: 50,
                                width: MediaQuery.of(context).size.width,
                                color: AppTheme.lightGrayTextColor
                                    .withOpacity(0.1),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 12.0, left: 24),
                                  child: Text(
                                    'Oldest',
                                    style: TextStyles(context)
                                        .getTitle2Style()
                                        .copyWith(
                                            color: AppTheme.lightGrayTextColor,
                                            fontWeight: FontWeight.normal),
                                  ),
                                ),
                              ),
                            ),
                            NotificationReviewContainer(
                                color: Colors.blue,
                                image: LocalImagesFile.person_tsana,
                                photoBGColor: Colors.blue[50]!,
                                icon: Icons.chat_outlined,
                                line1: 'comments on your receipe:',
                                line2:
                                    "it's beyond my expectations, it'so \ndelicious",
                                personName: 'Tsana ',
                                time: '  1h ago'),
                            padding2,
                            NotificationReviewContainer(
                                isOnline: true,
                                color: AppTheme.dangerColor,
                                image: LocalImagesFile.person_aurora,
                                photoBGColor: Colors.indigo[100]!,
                                icon: Icons.email,
                                line1: 'mention you:',
                                line2: "you can add more cheese on...",
                                personName: 'Aurora ',
                                time: '  6d ago'),
                            padding2,
                            NotificationReviewContainer(
                                isOnline: true,
                                color: AppTheme.warningColor,
                                image: LocalImagesFile.person_farah,
                                photoBGColor: Colors.pink[100]!,
                                icon: Icons.person_add_outlined,
                                line1: 'started following you',
                                line2: "",
                                personName: 'Farah ',
                                time: '  8d ago'),
                            SizedBox(
                              height: 80,
                            )
                          ],
                        ),
                      ],
                    )),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
