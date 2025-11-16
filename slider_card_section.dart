import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../Theme/constant/images.dart';

class SliderCardSection extends StatelessWidget {
   SliderCardSection({super.key});

  final controller = PageController(viewportFraction: 0.8, keepPage: true);

  @override
  Widget build(BuildContext context) {
    final pages = List.generate(
      3,
      (index) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.grey.shade300,
        ),
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
        child: SizedBox(
          height: 280,
          child: Center(
            child: Text("Page $index", style: TextStyle(color: Colors.indigo)),
          ),
        ),
      ),
    );
    return Column(
      children: [
        SizedBox(height: 10),
        Stack(
          children: [
            Container(
              height: 280,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFF007456),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            Positioned(
              top: 60,
              left: 10,
              bottom: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Find the Perfect Freelancer for Any ",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        TextSpan(
                          text: "\nProject",
                          style: TextStyle(
                            fontSize: 26,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 80),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 0,
                    ),
                    child: Text("Explorer Now"),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 200,
              right: 0,
              bottom: -6,
              child: Image(image: AssetImage(UImages.manImage)),
            ),
            Positioned(
              left: 160,
              bottom: 10,
              child: SmoothPageIndicator(
                controller: controller,
                count: pages.length,
                effect: JumpingDotEffect(
                  dotHeight: 16,
                  dotWidth: 16,
                  jumpScale: .7,
                  verticalOffset: 15,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
