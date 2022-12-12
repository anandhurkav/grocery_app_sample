import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


class BottomBanner extends StatefulWidget {
  const BottomBanner({super.key});

 

  @override
  State<BottomBanner> createState() => _BottomBanner();
}

class _BottomBanner extends State<BottomBanner> {
  CarouselController buttonCarouselController = CarouselController();

 @override
  Widget build(BuildContext context) => Column(
    children: <Widget>[
      CarouselSlider(
        items: [ 
              Image.network(
      'https://wpr.intertoons.net/kmshoppyadmin/assets/images/uploads/productimages/HomeBannerSlider1920x66220220812T122859-1.png',
      fit: BoxFit.cover,
    ),
          Image.network(
      'https://wpr.intertoons.net/kmshoppyadmin/assets/images/uploads/productimages/StationeryItemsban20220601T092604.jpg',
      fit: BoxFit.cover,
    ),
          Image.network(
      'https://wpr.intertoons.net/kmshoppyadmin/assets/images/uploads/productimages/DealoftheDayban20220427T042631.jpg',
      fit: BoxFit.cover,
    ),
    Image.network(
      'https://wpr.intertoons.net/kmshoppyadmin/assets/images/uploads/productimages/BabyCareban20220119T075738.jpg',
      fit: BoxFit.cover,
    ),
        ],
        carouselController: buttonCarouselController,
        options: CarouselOptions(
          height: 100,
          autoPlay: true,
          enlargeCenterPage: true,
          viewportFraction: 1,
          initialPage: 2,
        ),
      ),
     
    ]
  );
}