import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FavouriteContainer extends StatefulWidget {
  final String imagepath;
  final String time, rating, labelPrice, title, subtitle;
  bool isSelected;
  FavouriteContainer(
      {required this.imagepath,
      required this.time,
      required this.rating,
      required this.title,
      required this.subtitle,
      this.isSelected = false,
      required this.labelPrice});
  @override
  _FavouriteContainerState createState() => _FavouriteContainerState();
}

class _FavouriteContainerState extends State<FavouriteContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding:
            const EdgeInsets.only(top: 8.0, bottom: 8, left: 16, right: 16),
        // child: CommonCard(
        //   radius: 24,
        //   child: Container(
        //     width: MediaQuery.of(context).size.width,
        //     decoration: BoxDecoration(
        //       boxShadow: [boxshadow],
        //       color: AppTheme.whiteTextColor,
        //     ),
        //     child: Row(
        //       children: [
        //         Stack(
        //           children: [
        //             Padding(
        //               padding:
        //                   const EdgeInsets.only(left: 8.0, top: 8, bottom: 8),
        //               child: Container(
        //                 height: 100,
        //                 width: 110,
        //                 child: ClipRRect(
        //                   borderRadius: BorderRadius.circular(18),
        //                   child:
        //                       Image.asset(widget.imagepath, fit: BoxFit.cover),
        //                 ),
        //               ),
        //             ),
        //             Positioned(
        //               top: 0,
        //               right: 0.0,
        //               child: Padding(
        //                 padding: const EdgeInsets.only(top: 8.0, right: 8),
        //                 child: CommonCard(
        //                   child: CircleAvatar(
        //                       radius: 17,
        //                       child: InkWell(
        //                         onTap: () {
        //                           setState(() {
        //                             widget.isSelected = !widget.isSelected;
        //                           });
        //                         },
        //                         child: Center(
        //                           child: Icon(Icons.favorite_rounded,
        //                               color: AppTheme.primaryColor,
        //                               //   color: widget.isSelected
        //                               //       ? AppTheme.primaryColor
        //                               //       : AppTheme.secondaryTextColor,
        //                               size: 19),
        //                         ),
        //                       ),
        //                       backgroundColor: AppTheme.whiteTextColor),
        //                 ),
        //               ),
        //             ),
        //           ],
        //         ),
        //         Expanded(
        //           child: Padding(
        //             padding: const EdgeInsets.only(left: 16.0),
        //             child: Column(
        //               crossAxisAlignment: CrossAxisAlignment.start,
        //               children: [
        //                 Padding(
        //                   padding: const EdgeInsets.only(bottom: 4),
        //                   child: Text(
        //                     AppLocalizations(context).of(widget.title),
        //                     style: TextStyles(context)
        //                         .getRegularStyle()
        //                         .copyWith(fontWeight: FontWeight.w600),
        //                     maxLines: 2,
        //                   ),
        //                 ),
        //                 Padding(
        //                   padding: const EdgeInsets.only(
        //                     bottom: 4.0,
        //                   ),
        //                   child: Text(
        //                     AppLocalizations(context).of(widget.subtitle),
        //                     style: TextStyles(context).getDescriptionStyle(),
        //                     maxLines: 2,
        //                   ),
        //                 ),
        //                 Padding(
        //                   padding: const EdgeInsets.only(bottom: 4.0),
        //                   child: Row(
        //                     children: [
        //                       Icon(Icons.star_rounded,
        //                           size: 23, color: Colors.amber[300]),
        //                       Text(widget.rating,
        //                           style: TextStyles(context)
        //                               .getSecondaryRegularStyle()
        //                               .copyWith(fontSize: 12)),
        //                       SizedBox(
        //                         width: 5,
        //                       ),
        //                       Image.asset(LocalImagesFile.LocalImagesFile,
        //                           width: 25),
        //                       Text(
        //                         widget.time,
        //                         style: TextStyles(context)
        //                             .getSecondaryRegularStyle()
        //                             .copyWith(fontSize: 12),
        //                         maxLines: 2,
        //                       ),
        //                     ],
        //                   ),
        //                 ),
        //                 Row(
        //                   children: [
        //                     CommonCard(
        //                       child: Container(
        //                         height: 25,
        //                         color: AppTheme.primaryColor,
        //                         child: Center(
        //                           child: Padding(
        //                             padding: const EdgeInsets.only(
        //                                 left: 16.0, right: 16),
        //                             child: Text(
        //                               widget.labelPrice,
        //                               style: TextStyles(context)
        //                                   .getBoldStyle()
        //                                   .copyWith(
        //                                       color: AppTheme.whiteTextColor),
        //                             ),
        //                           ),
        //                         ),
        //                       ),
        //                     ),
        //                     Expanded(child: SizedBox()),
        //                     InkWell(
        //                       onTap: () {
        //                         // NavigationServices(context).gotoCartScreen();
        //                       },
        //                       child: Padding(
        //                         padding: const EdgeInsets.only(right: 16.0),
        //                         child: CommonCard(
        //                           child: Container(
        //                             height: 25,
        //                             color: AppTheme.primaryColor,
        //                             child: Center(
        //                               child: Text(
        //                                 '  Order Now  ',
        //                                 style: TextStyles(context)
        //                                     .getBoldStyle()
        //                                     .copyWith(
        //                                         color: AppTheme.whiteTextColor),
        //                               ),
        //                             ),
        //                           ),
        //                         ),
        //                       ),
        //                     ),
        //                   ],
        //                 )
        //               ],
        //             ),
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
