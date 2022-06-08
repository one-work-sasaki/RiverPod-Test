class AppState{
  const AppState({this.counter = 0});
  final int counter;

  AppState copyWith(int counter) => AppState(counter: counter);
}