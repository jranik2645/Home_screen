import 'package:flutter/material.dart';
import 'package:jobs_task/Theme/constant/size.dart';

import '../../Theme/constant/color.dart';
import '../../Theme/constant/images.dart';
import '../../features/widgets/card_slide_section.dart';
import '../../features/widgets/header_section.dart';
import '../../features/widgets/popular_services.dart';
import '../../features/widgets/recent_job_post_card.dart';
import '../../features/widgets/search_bar_section.dart';
import '../../features/widgets/slider_card_section.dart';
import '../../features/widgets/title_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                USectionHeading(),
                Column(
                  children: [
                    ///Text from filed
                    TextSearchScreen(),
                  ],
                ),
                SizedBox(height: 30),

                SizedBox(
                  height: 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// title _section
                      TitleSection(title: "Popular Category"),

                      SizedBox(height: 20),
                      CardSlideSection(),
                    ],
                  ),
                ),

                SizedBox(height: 10),
                SliderCardSection(),

                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TitleSection(title: 'Popular Services'),
                    TextButton(
                      onPressed: () {},
                      child: Text("Explore", style: TextStyle(fontSize: 18)),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                PopularService(),
                SizedBox(height: 20),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleSection(title: "Recent Job Posted"),

                    SizedBox(height: 10),

                    RecentJobPostCard(),
                  ],
                ),
                SizedBox(height: 30),
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.cardBackground,
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Center(
                      child: Text(
                        "LoadMore",
                        style: TextStyle(fontSize: AppFontSizes.bodyLarge),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      "Top Rated Freelancers",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10),
                    OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        "Explore all",

                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 310,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: AppColors.cardBackground,
                          ),
                        ),
                        Positioned(
                          top: 10,
                          left: 20,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  borderRadius: BorderRadius.circular(10000),
                                  border: Border.all(color: Colors.green),
                                  image: DecorationImage(
                                    image: AssetImage(UImages.profileImage),
                                  ),
                                ),
                                child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: Icon(
                                    Icons.circle,
                                    size: 15,
                                    color: Colors.green,
                                    opticalSize: 10,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          right: 20,
                          top: 15,
                          child: Container(
                            height: 30,
                            width: 70,
                            decoration: BoxDecoration(
                              color: AppColors.badgePurple.withValues(
                                alpha: 0.1,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.bolt,
                                  color: Colors.orange,
                                  size: 25,
                                ),
                                Text(
                                  "Pro",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.orange,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 10,
                          left: 90,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Esther Howard",
                                    style: TextStyle(
                                      fontSize: AppFontSizes.headingMedium,
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Icon(
                                    Icons.check_circle,
                                    color: AppColors.badgeGreen,
                                  ),
                                ],
                              ),
                              Text(
                                "UI/UX Designer",
                                style: TextStyle(
                                  fontSize: AppFontSizes.headingSmall,
                                ),
                              ),
                            ],
                          ),
                        ),

                        Positioned(
                          bottom: 160,
                          left: 10,
                          child: Row(
                            children: [
                              Container(
                                height: 30,
                                width: 100,
                                decoration: BoxDecoration(
                                  //color: Colors.white54,
                                ),
                                child: Text(
                                  "Figma",
                                  style: TextStyle(
                                    fontSize: AppFontSizes.headingSmall,
                                  ),
                                ),
                              ),
                              Container(
                                height: 30,
                                width: 100,
                                decoration: BoxDecoration(
                                  //color: Colors.white54,
                                ),
                                child: Text(
                                  "Mobile app",
                                  style: TextStyle(
                                    fontSize: AppFontSizes.headingSmall,
                                  ),
                                ),
                              ),
                              SizedBox(width: 20),
                              Container(
                                height: 30,
                                width: 100,
                                decoration: BoxDecoration(
                                  // color: Colors.transparent,
                                ),
                                child: Text(
                                  "+4",
                                  style: TextStyle(
                                    fontSize: AppFontSizes.headingSmall,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 10,
                          bottom: 80,
                          child: Row(
                            children: [
                              Icon(Icons.star, color: Colors.yellow, size: 25),
                              Text(
                                "Review",

                                style: TextStyle(
                                  fontSize: AppFontSizes.headingSmall,
                                ),
                              ),
                              SizedBox(width: 160),
                              Text(
                                "4.5(212 reviews)",
                                style: TextStyle(
                                  fontSize: AppFontSizes.headingSmall,
                                ),
                              ),
                            ],
                          ),
                        ),

                        Positioned(
                          left: 10,
                          bottom: 40,
                          child: Row(
                            children: [
                              Icon(
                                Icons.attach_money_outlined,
                                color: Colors.yellow,
                                size: 25,
                              ),
                              Text(
                                "Hourly Rate",

                                style: TextStyle(
                                  fontSize: AppFontSizes.headingSmall,
                                ),
                              ),
                              SizedBox(width: 115),
                              Text(
                                "\$83.00/hr",
                                style: TextStyle(
                                  fontSize: AppFontSizes.headingSmall,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 10,
                          bottom: 10,
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_pin,
                                color: Colors.yellow,
                                size: 25,
                              ),
                              Text(
                                "Location",

                                style: TextStyle(
                                  fontSize: AppFontSizes.headingSmall,
                                ),
                              ),
                              SizedBox(width: 115),
                              Text(
                                "6391 Elgin St. Celina",
                                style: TextStyle(
                                  fontSize: AppFontSizes.headingSmall,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
