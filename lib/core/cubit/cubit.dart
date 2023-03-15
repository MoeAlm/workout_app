import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_app/core/cubit/states.dart';

class AppCubit extends Cubit<AppState>{
  AppCubit() : super(InitialState());
  static AppCubit get(context) => BlocProvider.of(context);

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