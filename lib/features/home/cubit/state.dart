abstract class HomeState {
  final List<String> notes;

  HomeState({required this.notes});
}

class HomeInitialState extends HomeState {
  HomeInitialState({required super.notes});
}

class HomeAddState extends HomeState {
  HomeAddState({required super.notes});
}

class HomeremoveState extends HomeState {
  HomeremoveState({required super.notes});
}
