import 'package:flutter/material.dart';
import 'package:tr_new/main.dart';
import 'dart:async';
import 'package:tr_new/transition.dart';

void main() {
  runApp(const MaterialApp(
    home: TransitionPage(),
  ));
}

class TransitionPage extends StatefulWidget {
  const TransitionPage({super.key});

  @override
  State<TransitionPage> createState() => _TransitionPageState();
}

class _TransitionPageState extends State<TransitionPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(seconds: 6),
        () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const Home()),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: const Transition(),
      ),
    );
  }
}
