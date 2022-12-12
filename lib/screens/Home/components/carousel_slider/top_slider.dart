import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


class TopSlider extends StatefulWidget {
  const TopSlider({super.key});

 

  @override
  State<TopSlider> createState() => _TopSliderState();
}

class _TopSliderState extends State<TopSlider> {
  CarouselController buttonCarouselController = CarouselController();

 @override
  Widget build(BuildContext context) => Column(
    children: <Widget>[
      CarouselSlider(
        items: [
           
          
          Image.network(
      'https://wpr.intertoons.net/kmshoppyadmin/assets/images/uploads/productimages/HomeBannerSlider1920x66220220619T084502-1.jpg',
      fit: BoxFit.cover,
    ),
          Image.network(
      'https://wpr.intertoons.net/kmshoppyadmin/assets/images/uploads/productimages/MobileHomeBannerSlider360x18020221020T075024-1.jpg',
      fit: BoxFit.cover,
    ),
    Image.network(
      'https://wpr.intertoons.net/kmshoppyadmin/assets/images/uploads/productimages/BabyCare20220119T093331.png',
      fit: BoxFit.cover,
    ),
        ],
        carouselController: buttonCarouselController,
        options: CarouselOptions(
          autoPlay: true,
          enlargeCenterPage: true,
          viewportFraction: 1,
          aspectRatio: 16/9,
          initialPage: 2,
        ),
      ),
     
    ]
  );
}