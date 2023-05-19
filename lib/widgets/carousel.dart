import 'package:flutter/material.dart';
import 'package:flutter_custom_carousel_slider/flutter_custom_carousel_slider.dart';

class CustomCarousel extends StatelessWidget {
  CustomCarousel(
      this.imgLoc1, this.imgLoc2, this.imgLoc3, this.imgLoc4, this.CHeight);
  final String imgLoc1;
  final String imgLoc2;
  final String imgLoc3;
  final String imgLoc4;

  final double CHeight;
  late List<CarouselItem> itemList = [
    CarouselItem(
      image: AssetImage(imgLoc1),
    ),
    CarouselItem(
      image: AssetImage(imgLoc2),
      onImageTap: (i) {},
    ),
    CarouselItem(
      image: AssetImage(imgLoc3),
      onImageTap: (i) {},
    ),
    CarouselItem(
      image: AssetImage(imgLoc4),
      onImageTap: (i) {},
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomCarouselSlider(
          items: itemList,
          showText: true,
          height: CHeight,
          autoplay: true,
          showSubBackground: false,
        )
      ],
    );
  }
}
