import 'package:bookly_application/Features/home/model/filmdetailsmodel.dart';
import 'package:bookly_application/Features/home/presenations/views/widgets/custom_FilmItem.dart';
import 'package:bookly_application/Features/home/presenations/views/widgets/film_rating.dart';
import 'package:bookly_application/Features/home/presenations/views/widgets/userRating.dart';
import 'package:bookly_application/core/utils/assets.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class FilmDetailSection extends StatelessWidget {
   FilmDetailSection({super.key, 
   //required this.title, required this.img
   });
  /* late String title;
  late String img; */

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.2),
          child: AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
           image: DecorationImage(
            image: AssetImage(AssetsData.testImage),
            fit: BoxFit.fill,
          ), 
        ),
        
      ),
    ),
        ),
        const SizedBox(
          height: 35,
        ),
         Text(
          'title',
          style: Styles.textStyle30,
        ),
       
        const SizedBox(
          height: 18,
        ),
        userRating(),
        const SizedBox(
          height: 25,
        ),
       
      ],
    );
  }
}
