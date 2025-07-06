import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PeekCarousel extends StatefulWidget {
  const PeekCarousel({super.key});

  @override
  State<PeekCarousel> createState() => _PeekCarouselState();
}

class _PeekCarouselState extends State<PeekCarousel> {
  final PageController _controller = PageController(
    viewportFraction: 0.90, // Efek "peek" kanan-kiri
  );

  final List<String> imagePaths = [
    'assets/img/slider A.png',
    'assets/img/Slider news 1.png',
    'assets/img/slider news2.png',
    'assets/img/slide news3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 160,
          child: PageView.builder(
            controller: _controller,
            itemCount: imagePaths.length,
            itemBuilder: (context, index) {
              double left = index == 0 ? 0 : 6;
              double right = index == imagePaths.length - 1 ? 0 : 6;

              return Padding(
                padding: EdgeInsets.only(left: left, right: right),
                child: _PeekItem(imagePath: imagePaths[index]),
              );
            },
          ),
        ),
        const SizedBox(height: 8),
        SmoothPageIndicator(
          controller: _controller,
          count: imagePaths.length,
          effect: const ExpandingDotsEffect(
            activeDotColor: Colors.deepOrangeAccent,
            dotColor: Colors.grey,
            dotHeight: 8,
            dotWidth: 8,//push
          ),
        ),
      ],
    );
  }
}

class _PeekItem extends StatelessWidget {
  final String imagePath;

  const _PeekItem({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        color: Colors.white,
        child: Image.asset(
          imagePath,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
