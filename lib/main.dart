import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/bloc_observable.dart';
import 'package:rick_and_morty/ui/pages/home_page.dart';

void main() async {
  Bloc.observer = CharacterBlocObservable();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rick and Morty',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.black,
        fontFamily: 'Georgia',
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white
          ),
          displayMedium: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w700, color: Colors.white
          ),
          displaySmall: TextStyle(
              fontSize: 24, color: Colors.white
          ),
          bodyLarge: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white

          ),
          bodyMedium: TextStyle(
              fontSize: 12, fontWeight: FontWeight.w200, color: Colors.white
          ),
          bodySmall: TextStyle(
              fontSize: 11, fontWeight: FontWeight.w100, color: Colors.grey
          )
        ),
      ),
      home: HomePage(title: 'Rick and Morty'),
    );
  }
}

