import 'package:flutter/material.dart';

Widget buildNavigationBar(double height, double width) {
  return NavigationBar(
    height: height * 0.075,
    destinations: [
      NavigationDestination(
          icon: Image.asset(
            'assets/icons/home.png',
            height: height * 0.03,
            width: width * 0.06,
            color: Colors.white70,
          ),
          label: 'Home'),
      NavigationDestination(
          icon: Image.asset(
            'assets/icons/search.png',
            height: height * 0.03,
            width: width * 0.06,
            color: Colors.white70,
          ),
          label: 'Search'),
      NavigationDestination(
          icon: Image.asset(
            'assets/icons/bookmark.png',
            height: height * 0.03,
            width: width * 0.06,
            color: Colors.white70,
          ),
          label: 'Saved'),
      NavigationDestination(
          icon: Image.asset(
            'assets/icons/ballot.png',
            height: height * 0.03,
            width: width * 0.06,
            color: Colors.white70,
          ),
          label: 'Workouts'),
      NavigationDestination(
          icon: Image.asset(
            'assets/icons/user.png',
            height: height * 0.03,
            width: width * 0.06,
            color: Colors.white70,
          ),
          label: 'Profile'),
    ],
  );
}
