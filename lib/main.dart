import 'package:flutter/material.dart';

void main() => runApp(const GridViewApp());

class GridViewApp extends StatelessWidget {
  const GridViewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GridView',
      theme: ThemeData(useMaterial3: true),
      home: const GridViewPage(),
    );
  }
}

class GridViewPage extends StatelessWidget {
  const GridViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView Example'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(12),
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 1.35,
        children: List.generate(
          12,
          (index) => Container(
            color: Colors.amber,
            alignment: Alignment.center,
            child: Text('${index + 1}', style: const TextStyle(fontSize: 16)),
          ),
        ),
      ),
    );
  }
}
