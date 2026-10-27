import 'package:hive/hive.dart';

class HiveDataSource {
  final Box box = Hive.box('Note');

  Future<void> createNote(String newNote) async {
    final notes = getNotes();
    notes.add(newNote);
    await box.put('notes', notes);
  }

  Future<void> deleteNote(int index) async {
    final notes = getNotes();

    if (index >= 0 && index < notes.length) {
      notes.removeAt(index);
      await box.put('notes', notes);
    }
  }

  List<String> getNotes() {
    return List<String>.from(box.get('notes', defaultValue: <String>[]));
  }
}
