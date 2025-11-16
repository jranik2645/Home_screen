import 'package:flutter/material.dart';
import 'package:jobs_task/Theme/constant/size.dart';

import '../../Theme/constant/color.dart';
import '../../Theme/constant/images.dart';

class RecentJobPostCard extends StatelessWidget {
  const RecentJobPostCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.cardBackground,
                borderRadius: BorderRadius.circular(10),
              ),
            ),

            // TOP ROW
            Positioned(
              top: 15,
              left: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(shape: BoxShape.circle),
                        child: Image(image: AssetImage(UImages.profileImage)),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Posted 2 years ago",
                        style: TextStyle(fontSize: AppFontSizes.headingSmall),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: 10,
              right: 10,
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: AppColors.borderColor,
                  borderRadius: BorderRadius.circular(1000),
                ),
                child: Icon(Icons.favorite, color: Colors.redAccent, size: 25),
              ),
            ),

            // TITLE TEXT
            Positioned(
              top: 80,
              left: 20,
              right: 20,
              child: Text(
                "Logo Design for Business Loan Brokerage for an agency",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),

            // TAG LIST
            Positioned(
              top: 150,
              left: 20,
              right: 20,
              child: Wrap(
                spacing: 10,
                children: List.generate(
                  3,
                  (index) => Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: AppColors.badgeGreen.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.shopping_bag, size: 18),
                        SizedBox(width: 5),
                        Text("MidLevel"),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            // BOTTOM PRICE BOX
            Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.borderColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "Starting From",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "126",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 5),
        Stack(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.cardBackground,
                borderRadius: BorderRadius.circular(10),
              ),
            ),

            // TOP ROW
            Positioned(
              top: 15,
              left: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(shape: BoxShape.circle),
                        child: Image(image: AssetImage(UImages.profileImage)),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Posted 2 years ago",
                        style: TextStyle(fontSize: AppFontSizes.headingSmall),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: 10,
              right: 10,
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: AppColors.borderColor,
                  borderRadius: BorderRadius.circular(1000),
                ),
                child: Icon(Icons.favorite, color: Colors.redAccent, size: 25),
              ),
            ),

            // TITLE TEXT
            Positioned(
              top: 80,
              left: 20,
              right: 20,
              child: Text(
                "Logo Design for Business Loan Brokerage for an agency",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),

            // TAG LIST
            Positioned(
              top: 150,
              left: 20,
              right: 20,
              child: Wrap(
                spacing: 10,
                children: List.generate(
                  3,
                      (index) => Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: AppColors.badgeGreen.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.shopping_bag, size: 18),
                        SizedBox(width: 5),
                        Text("MidLevel"),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            // BOTTOM PRICE BOX
            Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.borderColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "Starting From",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "126",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 5),
        Stack(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.cardBackground,
                borderRadius: BorderRadius.circular(10),
              ),
            ),

            // TOP ROW
            Positioned(
              top: 15,
              left: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(shape: BoxShape.circle),
                        child: Image(image: AssetImage(UImages.profileImage)),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Posted 2 years ago",
                        style: TextStyle(fontSize: AppFontSizes.headingSmall),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: 10,
              right: 10,
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: AppColors.borderColor,
                  borderRadius: BorderRadius.circular(1000),
                ),
                child: Icon(Icons.favorite, color: Colors.redAccent, size: 25),
              ),
            ),

            // TITLE TEXT
            Positioned(
              top: 80,
              left: 20,
              right: 20,
              child: Text(
                "Logo Design for Business Loan Brokerage for an agency",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),

            // TAG LIST
            Positioned(
              top: 150,
              left: 20,
              right: 20,
              child: Wrap(
                spacing: 10,
                children: List.generate(
                  3,
                      (index) => Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: AppColors.badgeGreen.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.shopping_bag, size: 18),
                        SizedBox(width: 5),
                        Text("MidLevel"),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            // BOTTOM PRICE BOX
            Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.borderColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "Starting From",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "126",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
