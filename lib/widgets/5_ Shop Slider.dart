// widgets/5_ Shop Slider.dart
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 119,
            autoPlay: true,
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              setState(() {
                activeIndex = index;
              });
            },
          ),
          items: images.map((imageUrl) {
            return Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 7),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.network(imageUrl).image,
                ),
              ),
            );
          }).toList(),
        ),

        Positioned(
          bottom: 10,
          left: 0,
          right: 0,
          child: Center(
            child: AnimatedSmoothIndicator(
              activeIndex: activeIndex,
              count: images.length,
              effect: const ExpandingDotsEffect(
                activeDotColor: Color(0XFF53B175),
                dotColor: Colors.grey,
                dotHeight: 10,
                dotWidth: 10,
                spacing: 4,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

final List<String> images = [
  'https://template.canva.com/EAG0JxK0Nu8/2/0/400w-SVjZ7T3udzk.jpg',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZr06K0mARQU0XudsZCRhmu1dS6c7hzkCYFyg6LT87c2IphmYG-R-MwSEw&s=10',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdQTQpWB8sXJsNe4475G1bRUoOJXtol9rnm3aUyvWDTEWKOYJ-QFCElR8y&s=10',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVXI-NnuMRROl3taB2Grgr6qwm_KpM34yXYe54SOdH_w&s=10',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6Vowo1D8eDDIzLewWtu92IZ4nV21aLZhq05B7YQ3YvhpL2MAtHUrVz5sW&s=10',
];
