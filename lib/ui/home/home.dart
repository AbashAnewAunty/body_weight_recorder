import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HomePage extends HookWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ホーム"),
        leading: const Icon(Icons.settings),
        actions: const [
          Icon(Icons.person_2_rounded),
        ],
      ),
      body: const ColoredBox(
        color: Colors.purple,
      ),
      floatingActionButton: const Icon(Icons.add),
    );
  }
}
