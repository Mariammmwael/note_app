import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/core/color_app.dart';
import 'package:note_app/features/home/cubit/home_cubit.dart';
import 'package:note_app/features/home/cubit/state.dart';
import 'package:note_app/features/home/widgets/custom_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.primryColor,
      appBar: AppBar(
        backgroundColor: ColorApp.primryColor,
        title: Text(
          'Notes',
          style: TextStyle(
            color: Colors.white,
            fontWeight: .w600,
            fontSize: 43,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            style: IconButton.styleFrom(
              backgroundColor: ColorApp.secColor,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            style: IconButton.styleFrom(
              backgroundColor: ColorApp.secColor,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            icon: Icon(Icons.info_outline),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            return ListView.builder(
              itemCount: state.notes.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: CustomCard(
                    backgroundColor: const Color(0xFFFD99FF),
                    text: state.notes[index],
                  ),
                );
              },
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, 'editorscreen');
        },
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        child: Icon(Icons.add),
      ),
    );
  }
}
