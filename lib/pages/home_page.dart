import 'package:flutter/material.dart';
import 'package:wordle_learn/componants/tiles.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wordle Learn'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 7,
            child: Container(
              color: Colors.amber,
              padding: const EdgeInsets.fromLTRB(36, 20, 36, 19),
              child: Tiles(),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.blue,
              child: const Center(
                child: Text(
                  "Bottom Section",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
