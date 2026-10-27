import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/features/home/cubit/home_cubit.dart';

import 'package:note_app/features/home/editor_screen.dart';
import 'package:note_app/features/home/home_screen.dart';

void main() {
  runApp(BlocProvider(create: (context) => HomeCubit(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),

      routes: {
        'homescreen': (context) => const HomeScreen(),
        'editorscreen': (context) => const EditorScreen(),
      },
    );
  }
}
