import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:workout_app/core/components/text_components.dart';

Widget buildExercise(double height, double width) {
  return Stack(
    alignment: Alignment.center,
    children: [
      Container(
        height: height * 0.25,
        width: width * 1,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(30),
          image: const DecorationImage(
              image: AssetImage('assets/images/1.jpg'), fit: BoxFit.cover),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            buildText(
                text: 'Full Body',
                width,
                size: 0.09,
                color: Colors.white,
                weight: FontWeight.bold),
            buildText(
                text: 'Exercise',
                width,
                size: 0.09,
                color: Colors.white,
                weight: FontWeight.bold),
          ],
        ).p(16),
      ),
      Container(
        height: height * 0.25,
        width: width * 1,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
              colors: [Colors.transparent, Colors.transparent, Colors.black],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              children: [
                SizedBox(
                  height: height * 0.04,
                  width: width * 0.35,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Start workout'),
                    style:
                        OutlinedButton.styleFrom(foregroundColor: Colors.black),
                  ),
                ).pOnly(right: width * 0.22),
                CircularPercentIndicator(
                  radius: width * 0.06,
                  percent: 0.75,
                  center: const Text(
                    '75%',
                    style: TextStyle(color: Colors.white),
                  ),
                  progressColor: Colors.white,
                  backgroundColor: Colors.white10,
                ).pOnly(right: 8),
                CircularPercentIndicator(
                  radius: width * 0.06,
                  percent: 0.50,
                  center: const Text(
                    '50%',
                    style: TextStyle(color: Colors.white),
                  ),
                  progressColor: Colors.white,
                  backgroundColor: Colors.white10,
                ),
              ],
            ).p(width * 0.05),
          ],
        ),
      ),
    ],
  );
}
