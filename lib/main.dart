import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_d/screen/my_home_page.dart';
import 'package:state_d/state/app_state.dart';
import 'package:state_d/view_model/my_home_view_model.dart';

void main() {
  runApp(
    ProviderScope(
      child: const MyApp()
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

final myHomePageProvider = StateNotifierProvider<MyHomePageStateNotifier,AppState>
  ((ref) => MyHomePageStateNotifier());

