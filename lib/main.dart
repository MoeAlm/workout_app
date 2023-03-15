import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_app/core/cubit/cubit.dart';
import 'package:workout_app/core/cubit/states.dart';
import 'package:workout_app/view/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppState>(listener: (context, state){}, builder: (context, state){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Workout App',
          theme: ThemeData(
            useMaterial3: true,
            navigationBarTheme: const NavigationBarThemeData(
              indicatorColor: Colors.white70,
              backgroundColor: Color.fromRGBO(20, 25, 25, 1),

              labelTextStyle: MaterialStatePropertyAll(
                TextStyle(
                    color: Colors.white70
                ),
              ),
              iconTheme: MaterialStatePropertyAll(
                IconThemeData(
                    color: Colors.white70
                ),
              ),
            ),
          ),
          home: HomeScreen(),
        );
      }, ),
    );
  }
}
