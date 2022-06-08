import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_d/state/app_state.dart';

class MyHomePageStateNotifier extends StateNotifier<AppState>{
  MyHomePageStateNotifier() : super(AppState());

  void increment(){
    state = state.copyWith(state.counter + 1);
  }
}