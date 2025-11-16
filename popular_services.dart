import 'package:flutter/material.dart';
import 'package:jobs_task/Theme/constant/size.dart';

import '../../Theme/constant/color.dart';
import '../../Theme/constant/images.dart';

class PopularService extends StatelessWidget {
  const PopularService({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 400,
          child: ListView.separated(
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return  Stack(
                children: [
                  Container(
                    height: 450,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.cardBackground,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 4, left: 5, right: 5),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    topLeft: Radius.circular(10),
                                  ),
                                ),
                                child: Image(
                                  height: 250,
                                  image: AssetImage(UImages.cardImage),
                                  fit: BoxFit.fitWidth,
                                  width: double.infinity,
                                ),
                              ),
                            ),

                            // Sponsored Tag
                            Positioned(
                              left: 20,
                              top: 30,
                              child: Container(
                                height: 40,
                                width: 120,
                                decoration: BoxDecoration(
                                  color: AppColors.borderColor,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Text(
                                    "Sponsored",
                                    style: TextStyle(
                                      fontSize: AppFontSizes.bodyMedium,
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            // Heart Icon
                            Positioned(
                              right: 20,
                              top: 30,
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: AppColors.borderColor,
                                  borderRadius: BorderRadius.circular(10000),
                                ),
                                child: Center(
                                  child: Icon(Icons.favorite_outline, size: 25),
                                ),
                              ),
                            ),
                          ],
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 24,
                                    color: Colors.yellow,
                                  ),
                                  SizedBox(width: 10),
                                  Text("4.5", style: TextStyle(fontSize: 20)),
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "reviews(233)",
                                          style: TextStyle(fontSize: 20),
                                        ),
                                        Text(
                                          "level .2",
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 7),
                              Text(
                                "I will do professional figma design for website template....",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 4),
                              Divider(thickness: 1, color: AppColors.lightText),
                              SizedBox(height: 15),

                              Container(
                                height: 50,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: AppColors.borderColor,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Starting From",
                                        style: TextStyle(
                                          fontSize: AppFontSizes.bodyMedium,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        "\$122",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
            separatorBuilder: (context, index) => SizedBox(width: 5),

            itemCount: 10,
          ),
        ),
      ],
    );
  }
}
