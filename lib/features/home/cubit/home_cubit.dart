import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/features/home/cubit/state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitialState(notes: []));

  void homeAdd(String newNotes) {
    final List<String> updatedNotes = List.from(state.notes);
    updatedNotes.add(newNotes);
    emit(HomeAddState(notes: updatedNotes));
  }

  void homeRemove(int index) {
    final List<String> updatedNotes = List.from(state.notes);
    updatedNotes.removeAt(index);
    emit(HomeremoveState(notes: updatedNotes));
  }
}
