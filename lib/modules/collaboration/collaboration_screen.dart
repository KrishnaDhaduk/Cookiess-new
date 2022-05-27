
import 'package:flutter/material.dart';
import '../../routes/route_names.dart';
import '../../utils/text_style.dart';
import '../../widgets/bottom_to_top_animation_view.dart';
import '../home/components/collaboration_container.dart';
import '../home/components/collaboration_info_list.dart';
import 'components/collaboration_screen_container.dart';

class CollaborationScreen extends StatefulWidget {
  final AnimationController animationController;

  const CollaborationScreen({Key? key, required this.animationController})
      : super(key: key);
  @override
  _CollaborationScreenState createState() => _CollaborationScreenState();
}

class _CollaborationScreenState extends State<CollaborationScreen> {
  List<CollaborationContainer> _getCollaborationContainer =
      CollaborationInfoList.getCollaborationInfoListlist;

  @override
  void initState() {
    widget.animationController.forward();
    super.initState();
  }

  Widget build(BuildContext context) {
    return BottomToTopAnimationView(
      animationController: widget.animationController,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
                left: 16.0, right: 16, top: 24, bottom: 16),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Text(
                    "Collaboration",
                    style: TextStyles(context).getTitleStyle(),
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 55,
                      ),
                      for (var item in _getCollaborationContainer)
                        CollaborationScreenContainer(
                          followers: item.followers,
                          foodname: item.foodname,
                          imagepath2: item.imagepath2,
                          state: item.state,
                          isCalander: item.isCalander,
                          onTap: () {
                            setState(() {
                              NavigationServices(context)
                                  .gotoCollaborationScreenDetails();
                            });
                          },
                          imagepath: item.imagepath,
                        ),
                      SizedBox(
                        height: 80,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
