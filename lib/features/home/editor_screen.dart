import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/core/color_app.dart';
import 'package:note_app/features/home/cubit/home_cubit.dart';

class EditorScreen extends StatefulWidget {
  const EditorScreen({super.key});

  @override
  State<EditorScreen> createState() => _EditorScreenState();
}

class _EditorScreenState extends State<EditorScreen> {
  TextEditingController titleController = TextEditingController();
  TextEditingController textController = TextEditingController();
  @override
  void dispose() {
    titleController.dispose();
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.primryColor,
      appBar: AppBar(
        backgroundColor: ColorApp.primryColor,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context, 'homescreen');
            },
            style: IconButton.styleFrom(
              backgroundColor: ColorApp.secColor,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            icon: Icon(Icons.arrow_back_ios_new_outlined),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {},
              style: IconButton.styleFrom(
                backgroundColor: ColorApp.secColor,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              icon: Icon(Icons.visibility),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {
                final title = titleController.text.trim();
                final text = textController.text.trim();

                if (title.isEmpty && text.isEmpty) {
                  return;
                }

                final newNote = '$title\n$text';

                context.read<HomeCubit>().homeAdd(newNote);

                Navigator.pop(context);
              },
              style: IconButton.styleFrom(
                backgroundColor: ColorApp.secColor,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              icon: Icon(Icons.save),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(
                hintText: 'Title',
                hintStyle: TextStyle(color: Color(0xFF9A9A9A), fontSize: 48),
                fillColor: ColorApp.primryColor,
              ),
            ),
            TextField(
              controller: textController,
              decoration: const InputDecoration(
                hintText: 'Type Something ...',
                hintStyle: TextStyle(color: Color(0xFF9A9A9A), fontSize: 23),
                fillColor: ColorApp.primryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
