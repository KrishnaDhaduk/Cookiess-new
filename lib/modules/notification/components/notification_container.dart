import 'package:flutter/material.dart';
import '../../../constants/themes.dart';
import '../../../utils/text_style.dart';
import '../../../widgets/common_card.dart';

// ignore: must_be_immutable
class NotificationContainer extends StatefulWidget {
  final String title, description;
  bool isSelected;
  NotificationContainer({
    this.isSelected = false,
    required this.title,
    required this.description,
  });
  @override
  _NotificationContainerState createState() => _NotificationContainerState();
}

class _NotificationContainerState extends State<NotificationContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {},
        child: Padding(
          padding:
              const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
          child: CommonCard(
            radius: 16,
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 4, bottom: 8),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.title,
                        style: TextStyles(context)
                            .getBoldStyle()
                            .copyWith(fontSize: 16),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: InkWell(
                            splashColor: AppTheme.primaryColor.withOpacity(0.1),
                            onTap: () {
                              setState(() {
                                widget.isSelected = !widget.isSelected;
                              });
                            },
                            child: Icon(
                              widget.isSelected
                                  ? Icons.toggle_on
                                  : Icons.toggle_off,
                              color: widget.isSelected
                                  ? AppTheme.primaryColor
                                  : AppTheme.secondaryTextColor,
                              size: 32,
                            )),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(widget.description,
                            maxLines: 3,
                            style: TextStyles(context).getDescriptionStyle()),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
