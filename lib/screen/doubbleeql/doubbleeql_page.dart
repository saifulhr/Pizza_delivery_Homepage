import 'package:flutter/material.dart';

class DoubbleeqlPage extends StatefulWidget {
  const DoubbleeqlPage({super.key});

  @override
  State<DoubbleeqlPage> createState() => _DoubbleeqlPageState();
}

class _DoubbleeqlPageState extends State<DoubbleeqlPage> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: Text('Doubbleeql', style: TextStyle(
          fontSize: 24, fontWeight: FontWeight.w700
        ),),)
      ],
    );
  }
}