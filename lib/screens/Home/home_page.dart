import 'package:flutter/material.dart';
import 'package:grocery_app_sample/screens/Home/components/BottomBanner/bottom_banner.dart';
import 'package:grocery_app_sample/screens/Home/components/carousel_slider/top_slider.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  List image = [
    'https://www.seekpng.com/png/full/31-315722_product-image-parle-g-biscuit-25-gm.png',
    'https://www.pngkey.com/png/full/266-2666956_slabs-cadbury-dairy-milk-mint-chocolate.png',
    'https://smallimg.pngkey.com/png/small/5-59739_apple-fruit-png.png',
    'https://smallimg.pngkey.com/png/small/837-8370164_frutas-y-verduras-fresh-vegetables-basket-png.png',
  ];
  List name = ['PARLE-G ', 'DIARY MILK', 'APPLES', 'VEGETABLES '];
  List rate = ['45.0/-', '280.0/-', '350.0/-', '400.0/-'];
  List location = ['Lulu Hypermarket', 'WE Mart ', 'Lulu Hypermarket', 'Greens Hypermarket '];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: NewGradientAppBar(
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(60),
              child: Column(
                children: [
                  Row(
                    children: const [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.location_on_outlined,
                        color: Colors.deepOrangeAccent,
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Choose Location',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        size: 30,
                        color: Colors.deepOrangeAccent,
                      ),
                      Spacer(),
                      Icon(
                        Icons.favorite_border_outlined,
                        color: Colors.white70,
                      ),
                      SizedBox(
                        width: 10,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(
                          Icons.search_outlined,
                          color: Colors.grey,
                          size: 25,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          width: 300,
                          child: TextFormField(
                            onTap: () {},
                            decoration: const InputDecoration(
                                hintText: "Search for over 5000 products"),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              )),
          gradient: const LinearGradient(colors: [
            Color.fromARGB(255, 108, 1, 127),
            Color.fromARGB(255, 164, 5, 192)
          ])),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: ListView(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 225,
                    width: MediaQuery.of(context).size.width,
                    child: const TopSlider(),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Featured Products',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 35, 15, 39),
                            fontSize: 15),
                      ),
                      Text(
                        'See More >',
                        style: TextStyle(
                            color: Colors.pinkAccent,
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 220,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(4, (index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Container(
                            padding: const EdgeInsets.only(left: 3, right: 3),
                            height: 150,
                            width: 190,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 161, 130, 166),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 130,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: NetworkImage(image[index]),
                                          fit: BoxFit.fitWidth)),
                                ),
                                Text(
                                  name[index],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Text(
                                  '₹' + rate[index],
                                  style: const TextStyle(
                                      color: Colors.orangeAccent,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 15),
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.location_on_outlined,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                    Text(
                                      location[index],
                                      style: TextStyle(
                                          color: Colors.grey[300],
                                          fontSize: 12),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                  const SizedBox(height: 5,),
                  const BottomBanner(),
                  const SizedBox(height: 5,)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
