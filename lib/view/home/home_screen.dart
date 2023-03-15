import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:workout_app/core/cubit/cubit.dart';
import 'package:workout_app/core/cubit/states.dart';

import '../../core/components/exercise_components.dart';
import '../../core/components/navigationbar_components.dart';
import 'appbar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    var pageController = PageController();
    GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();
    return BlocConsumer<AppCubit, AppState>(
        listener: (BuildContext context, Object? state) {},
        builder: (BuildContext context, state) {
          var cubit = AppCubit.get(context);
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
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                              image:
                                  AssetImage('assets/images/1.jpg'),
                              fit: BoxFit.cover
                            ),
                          ),
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
                      style: TextStyle(
                          color: Colors.white, fontSize: width * 0.055),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'See All',
                        style: TextStyle(
                            color: Colors.white, fontSize: width * 0.055),
                      ),
                    ),
                  ],
                ).px12(),
                SizedBox(
                  height: height * 0.05,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: cubit.exerciseList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 4),
                        child: InkWell(
                          onTap: () {
                            cubit.changCategory(index);
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 12),
                            decoration: BoxDecoration(
                              color: cubit.categoryIndex == index
                                  ? Colors.green
                                  : Colors.grey,
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Text(
                              cubit.exerciseList[index],
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: height * 0.4555,
                  child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return buildExercise(height, width)
                            .px12()
                            .pOnly(top: 8);
                      }),
                ).pOnly(top: 1)
              ],
            ),
            endDrawer: const Drawer(),
            bottomNavigationBar: buildNavigationBar(height, width),
          );
        });
  }
}
