
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class mySlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: 600,
      child: Carousel(
          images: [
          /*CachedNetworkImage(
          width: 400,height: 600,
          imageUrl: "https://cdn.pixabay.com/photo/2016/09/18/14/21/swimmer-1678307_960_720.jpg"),
      CachedNetworkImage(
          width: 400,height: 600,
          imageUrl: "https://cdn.pixabay.com/photo/2014/11/17/13/17/crossfit-534615_960_720.jpg"),
      CachedNetworkImage(
          width: 400,height: 600,
          imageUrl: "https://cdn.pixabay.com/photo/2015/04/20/17/39/man-731900_960_720.jpg")*/
          NetworkImage('https://cdn.pixabay.com/photo/2015/07/28/22/05/child-865116_960_720.jpg'),
      NetworkImage('https://cdn.pixabay.com/photo/2019/09/25/07/07/graduation-4502798_960_720.jpg'),
      NetworkImage('https://cdn.pixabay.com/photo/2015/09/01/15/48/mayor-917149_960_720.jpg'),
      //ExactAssetImage("assets/images/LaunchImage.jpg")
      ],
    dotSize: 7.0,
    dotSpacing: 20.0,
    dotColor: Colors.white54,
    indicatorBgPadding: 5.0,
    dotBgColor: Colors.transparent,
    borderRadius: false,
    moveIndicatorFromBottom: 580.0,
    noRadiusForIndicator: true,
    overlayShadow: false,
    overlayShadowColors: Colors.white,
    overlayShadowSize: 0.7,
    )
    );
  }
}
