import 'package:flutter/material.dart';

class AlignScreen extends StatefulWidget {
  const AlignScreen({Key? key}) : super(key: key);

  @override
  State<AlignScreen> createState() => _AlignScreenState();
}

class _AlignScreenState extends State<AlignScreen> {
  bool _isMoved = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: const Text(
          'Animated Align',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: AnimatedAlign(
          alignment: _isMoved ? Alignment.topRight : Alignment.bottomLeft,
          duration: const Duration(seconds: 2),
          curve: Curves.decelerate,
          child: Image.asset('assets/logo.png', height: 150),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigo,
        child: Icon(_isMoved ? Icons.move_down : Icons.move_up),
        onPressed: () {
          setState(() {
            _isMoved = !_isMoved;
          });
        },
      ),
    );
  }
}
