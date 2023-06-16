import 'package:flutter/material.dart';
import 'dart:async';
import 'package:auto_size_text/auto_size_text.dart';

void main() async {
  runApp(const Transition());
}

class Transition extends StatefulWidget {
  const Transition({super.key});

  @override
  State<StatefulWidget> createState() => FadeIn();
}

class FadeIn extends State<Transition> {
  late Timer _timer;
  bool _visiblelogo = false;
  bool _visibletext = false;

  FadeIn() {
    _timer = Timer(const Duration(seconds: 1), () {
      setState(() {
        _visiblelogo = !_visiblelogo;
        _visibletext = !_visibletext;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.grey,
          body: Center(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.transparent,
                ),
              ),
              Expanded(
                flex: 4,
                child: AnimatedOpacity(
                  // If the widget is visible, animate to 0.0 (invisible).
                  // If the widget is hidden, animate to 1.0 (fully visible).
                  opacity: _visiblelogo ? 1.0 : 0.0,
                  duration: const Duration(milliseconds: 2000),
                  child: Container(
                    width: 1000.0,
                    height: 1000.0,
                    child: Image.asset(
                      'assets/image/nfloral.png',
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: AnimatedOpacity(
                            opacity: _visibletext ? 1.0 : 0.0,
                            duration: const Duration(milliseconds: 2000),
                            child: const Expanded(
                                child: Align(
                              alignment: Alignment.center,
                              child: AutoSizeText(
                                "Welcome\n"
                                "     to\n"
                                "Nocturno",
                                minFontSize: 0,
                                maxLines: 3,
                                style: TextStyle(
                                  fontSize: 50,
                                  fontFamily: 'dancing',
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 255, 191, 0),
                                ),
                              ),
                            ))),
                      ),
                    ]),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.transparent,
                ),
              ),
            ]),
          )),
    );
  }
}
