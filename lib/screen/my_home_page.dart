import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_d/main.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const WidgetA(),
            WidgetB(),
            WidgetC(),
          ],
        ),
      ),
    );
  }
}
class WidgetA extends StatelessWidget {
  const WidgetA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'You have pushed the button this many times:',
    );
  }
}
class WidgetB extends ConsumerWidget{
  const WidgetB({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    print('WidgetB');
    final int counter = ref.watch(myHomePageProvider).counter;
    return Text(
      '$counter',
      style: Theme
          .of(context)
          .textTheme
          .headline4,
    );
  }
}
class WidgetC extends ConsumerWidget {
  const WidgetC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    print('WidgetC');
    final increment = ref.read(myHomePageProvider.notifier).increment;
    return ElevatedButton(
      onPressed: () {
        increment();
      },
      child: Text('カウント'),
    );
  }
}