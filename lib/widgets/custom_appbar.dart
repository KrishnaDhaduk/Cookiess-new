import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../logic/providers/theme_provider.dart';

class CustomAppBarView extends StatefulWidget {
  const CustomAppBarView({
    Key? key,
    this.isAddTopPadding = true,
    this.leftWidget,
    this.rightWidget,
    this.centerWidget,
    this.height,
    this.isCenter = false,
  }) : super(key: key);

  final bool? isAddTopPadding, isCenter;
  final double? height;
  final Widget? leftWidget, rightWidget, centerWidget;

  @override
  _CustomAppBarViewState createState() => _CustomAppBarViewState();
}

class _CustomAppBarViewState extends State<CustomAppBarView> {
  @override
  Widget build(BuildContext context) {
    final double topPadding =
        widget.isAddTopPadding! ? MediaQuery.of(context).padding.top : 0;
    final double finalheight = topPadding +
        ((widget.height == null)
            ? AppBar().preferredSize.height
            : widget.height!);
    return Consumer<ThemeProvider>(
      builder: (_, provider, child) => Container(
        child: Container(
          // color: AppTheme.whiteColor,
          height: finalheight,
          child: Padding(
            padding: EdgeInsets.only(top: topPadding),
            child: Padding(
              padding: const EdgeInsets.only(left: 4, right: 4),
              child: widget.isCenter!
                  ? Row(
                      children: <Widget>[
                        Expanded(
                          child: widget.leftWidget != null
                              ? Container(
                                  alignment: Alignment.centerLeft,
                                  child: widget.leftWidget,
                                )
                              : const SizedBox(),
                        ),
                        if (widget.centerWidget != null) widget.centerWidget!,
                        Expanded(
                          child: widget.rightWidget != null
                              ? Container(
                                  alignment: Alignment.centerRight,
                                  child: widget.rightWidget,
                                )
                              : const SizedBox(),
                        ),
                      ],
                    )
                  : Row(
                      children: <Widget>[
                        widget.leftWidget != null
                            ? Container(
                                alignment: Alignment.centerLeft,
                                child: widget.leftWidget,
                              )
                            : const SizedBox(),
                        if (widget.centerWidget != null)
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 16, right: 8),
                              child: widget.centerWidget,
                            ),
                          )
                        else
                          Expanded(
                            child: SizedBox(),
                          ),
                        widget.rightWidget != null
                            ? Container(
                                alignment: Alignment.centerRight,
                                child: widget.rightWidget,
                              )
                            : const SizedBox(),
                      ],
                    ),
            ),
          ),
        ),
      ),
    );
  }
}

class AppBarTextView extends StatelessWidget {
  const AppBarTextView({Key? key, this.titalText = ''}) : super(key: key);
  final String? titalText;

  @override
  Widget build(BuildContext context) {
    return Text(
      titalText!,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.headline6!.copyWith(
            fontWeight: FontWeight.bold,
          ),
    );
  }
}

class AppBarButtonView extends StatelessWidget {
  const AppBarButtonView({
    Key? key,
    this.buttonWidget,
    this.onTap,
    this.isClickable = true,
    this.borderRadius = 14,
    this.shadowColor,
    this.btnColor,
    this.aspectRatio = 1,
    this.padding = 6,
  }) : super(key: key);

  final double? borderRadius, aspectRatio, padding;
  final Color? shadowColor, btnColor;
  final Widget? buttonWidget;
  final bool? isClickable;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    Color newShadowColor, newBtnColor;
    if (shadowColor == null) {
      newShadowColor = Theme.of(context).primaryColor.withOpacity(0.4);
    } else {
      newShadowColor = shadowColor!;
    }
    if (btnColor == null) {
      newBtnColor = Theme.of(context).backgroundColor;
    } else {
      newBtnColor = btnColor!;
    }
    return AspectRatio(
      aspectRatio: aspectRatio!,
      child: Padding(
        padding: EdgeInsets.all(padding!),
        child: InkWell(
          onTap: () {
            onTap!();
          },
          child: Container(
            decoration: BoxDecoration(
              color: newBtnColor,
              borderRadius: BorderRadius.all(Radius.circular(borderRadius!)),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: newShadowColor,
                  blurRadius: 8,
                  offset: const Offset(4, 4),
                ),
              ],
            ),
            child: buttonWidget,
          ),
        ),
      ),
    );
  }
}
