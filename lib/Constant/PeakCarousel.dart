import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PeekCarousel extends StatefulWidget {
  const PeekCarousel({super.key});

  @override
  State<PeekCarousel> createState() => _PeekCarouselState();
}

class _PeekCarouselState extends State<PeekCarousel> {
  final PageController _controller = PageController(
    viewportFraction: 0.85, // Ini bikin kanan-kiri bisa "mengintip"
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 160,
          child: PageView(
            controller: _controller,
            children: const [
              _PeekItem(imagePath: 'assets/img/amazon.png'),
              _PeekItem(imagePath: 'assets/img/apple.png'),
              _PeekItem(imagePath: 'assets/img/netflix.png'),
            ],
          ),
        ),
        const SizedBox(height: 8),
        SmoothPageIndicator(
          controller: _controller,
          count: 3,
          effect: const ExpandingDotsEffect(
            activeDotColor: Colors.deepPurple,
            dotColor: Colors.grey,
            dotHeight: 8,
            dotWidth: 8,
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6), // Jarak antar item
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          color: Colors.white,
          child: Image.asset(
            imagePath,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
