import 'package:flutter/material.dart';
import 'package:tr_new/main.dart';
// import 'package:tr/status.dart';
// import 'package:tr/colorpalette.dart';
// import 'package:tr/data.dart';
import 'package:auto_size_text/auto_size_text.dart';

void main() {
  runApp(const MaterialApp(
    home: ChoosePage(),
  ));
}

class ChoosePage extends StatefulWidget {
  const ChoosePage({super.key});

  @override
  State<ChoosePage> createState() => _ChoosePageState();
}

class _ChoosePageState extends State<ChoosePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Expanded(
          flex: 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AutoSizeText(
                "  Please Choose\n"
                "      one of the\n"
                "following pages",
                minFontSize: 0,
                maxLines: 3,
                style: TextStyle(
                  fontFamily: 'bold',
                  fontWeight: FontWeight.w500,
                  fontSize: 50,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.transparent,
          ),
        ),
        Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.transparent,
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 255, 191, 0),
                      minimumSize: const Size.fromHeight(0), // NEW
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const StatusPage(
                            key: Key(''),
                          ),
                        ),
                      );
                    },
                    child: const AutoSizeText(
                      "Status",
                      minFontSize: 0,
                      maxLines: 1,
                      style: TextStyle(
                        fontFamily: 'bold',
                        fontWeight: FontWeight.w500,
                        fontSize: 60,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.transparent,
                  ),
                ),
              ],
            )),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.transparent,
          ),
        ),
        Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.transparent,
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 255, 191, 0),
                      minimumSize: const Size.fromHeight(0), // NEW
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const ColorPage(
                            key: Key(''),
                          ),
                        ),
                      );
                    },
                    child: const AutoSizeText(
                      "Color",
                      minFontSize: 0,
                      maxLines: 1,
                      style: TextStyle(
                        fontFamily: 'bold',
                        fontWeight: FontWeight.w500,
                        fontSize: 60,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.transparent,
                  ),
                ),
              ],
            )),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.transparent,
          ),
        ),
        Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.transparent,
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 255, 191, 0),
                      minimumSize: const Size.fromHeight(0), // NEW
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const DataPage(
                            key: Key(''),
                          ),
                        ),
                      );
                    },
                    child: const AutoSizeText(
                      "Data",
                      minFontSize: 0,
                      maxLines: 1,
                      style: TextStyle(
                        fontFamily: 'bold',
                        fontWeight: FontWeight.w500,
                        fontSize: 60,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.transparent,
                  ),
                ),
              ],
            )),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.transparent,
          ),
        ),
      ],
    ));
  }
}
