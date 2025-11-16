import 'package:flutter/material.dart';
import 'package:jobs_task/Theme/constant/color.dart';
import 'package:jobs_task/Theme/constant/images.dart';
import 'package:jobs_task/Theme/constant/size.dart';

class CardSlideSection extends StatelessWidget {
  const CardSlideSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,

        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height:180,
                width: 180,
                decoration: BoxDecoration(
                  color: AppColors.cardBackground,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 40,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image(
                        image: AssetImage(UImages.cardIcon1),
                         height: 40,
                         width: 40,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Digital \n Marketing",
                        style: TextStyle(fontSize:AppFontSizes.headingSmall,
                            color: AppColors.iconColor),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
        separatorBuilder: (context, index) => SizedBox(width: 8),
        itemCount: 10,
      ),
    );
  }
}
