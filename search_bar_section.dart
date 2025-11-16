import 'package:flutter/material.dart';
import 'package:jobs_task/Theme/constant/images.dart';

import '../../Theme/constant/color.dart';

class TextSearchScreen extends StatelessWidget {
  const TextSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
           padding: EdgeInsets.only(left:20 ),
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
              color: AppColors.cardBackground,
              borderRadius: BorderRadius.circular(30)),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Icon(
               Icons.search
            ),
          ),
        ),
        Positioned(left: 60, bottom: 0, top: 20, child: Text("Search here")),
        Positioned(
          right: 20,
          top: 2,
          bottom: 2,
          child: SizedBox(
            height: 30,
            child: Image(image: AssetImage(UImages.searchIcon)),
          ),
        )
      ],
    );
  }
}
