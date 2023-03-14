import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../core/components/exercise_components.dart';
import '../../core/components/navigationbar_components.dart';
import 'appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> exerciseList = [
    'All type',
    'Cordio',
    'Chest',
    'Upper',
    'Lowoer'
  ];

  List<String>? selectedExercise = [];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    var pageController = PageController();
    GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: key,
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromRGBO(20, 25, 25, 1),
      appBar: buildAppBar(width, context, key, height),
      body: Column(
        children: [
          SizedBox(
            height: height * 0.2,
            child: PageView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    height: height * 0.2,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(30)),
                  ).px12();
                }),
          ),
          Divider(
            color: Colors.grey.shade800,
          ).px20(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Workout Program',
                style: TextStyle(color: Colors.white, fontSize: width * 0.055),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'See All',
                  style:
                      TextStyle(color: Colors.white, fontSize: width * 0.055),
                ),
              ),
            ],
          ).px12(),
          SizedBox(
            height: height * 0.05,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: exerciseList.map(
                (exercise) {
                  bool isSelected = false;
                  if (exerciseList.contains(exercise)) {
                    isSelected = true;
                  }
                  return GestureDetector(
                    onTap: () {
                      if (!selectedExercise!.contains(exercise)) {
                        if (selectedExercise!.length < 5) {
                          selectedExercise!.add(exercise);
                          setState(() {});
                          print(selectedExercise);
                        }
                      } else {
                        selectedExercise!
                            .removeWhere((element) => element == exercise);
                        setState(() {});
                        print(selectedExercise);
                      }
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 4),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 12),
                        decoration: BoxDecoration(
                          color: isSelected ? Colors.green : Colors.transparent,
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Text(
                          exercise,
                          style: TextStyle(
                              color: isSelected ? Colors.black : Colors.white70,
                              fontSize: 14),
                        ),
                      ),
                    ),
                  );
                },
              ).toList(),
            ),
          ),
          SizedBox(
            height: height * 0.4555,
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return buildExercise(height, width).px12().pOnly(top: 8);
                }),
          ).pOnly(top: 1)
        ],
      ),
      endDrawer: const Drawer(),
      bottomNavigationBar: buildNavigationBar(height, width),
    );
  }
}
