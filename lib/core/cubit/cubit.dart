import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_app/core/cubit/states.dart';
import 'package:workout_app/view/home/home_screen.dart';
import 'package:workout_app/view/screens/saved_screen.dart';

import '../../view/screens/profile.dart';
import '../../view/screens/search_screen.dart';

class AppCubit extends Cubit<AppState>{
  AppCubit() : super(InitialState());
  static AppCubit get(context) => BlocProvider.of(context);

  int pageIndex = 0;

  List screens = [
    HomeScreen(),
    SearchScreen(),
    SavedScreen(),
    ProfileScreen()
  ];

  List<String> exerciseList = [
    'All type',
    'Cordio',
    'Chest',
    'Upper',
    'Lowoer'
  ];
  int categoryIndex = 0;

  List<String>? selectedExercise = [];

  void changCategory(index){
    categoryIndex = index;
    emit(ChangeCategoryState());
  }
}