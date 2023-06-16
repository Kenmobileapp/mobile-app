import 'package:flutter/material.dart';
import 'package:tr_new/colorcodedark.dart';
import 'package:tr_new/main.dart';
import 'package:tr_new/colorcodelight.dart';
// import 'package:tr/status.dart';
// import 'package:tr/colorpalette.dart';
// import 'package:tr/data.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: const FirebaseOptions(
        appId: "1:51221549452:android:61e5b4d4f3d7c8e0c9c6a9",
        apiKey: "AIzaSyDowTxCkPGmtgUpzvRzrIOk6zF7R_7hN4M",
        projectId: "nocturno-lamp",
        messagingSenderId: "51221549452",
        databaseURL:
            "https://nocturno-lamp-default-rtdb.asia-southeast1.firebasedatabase.app"),
  );

  runApp(ColorPick());
}

// input data to firebase
// give text "change color using color slider" (flex 1)
// give color palette (flex 3)
// give text "change color by inputting RGB value" (flex 1)
// give RGB value (flex 1)
// give space (flex 1)
// elevated button for page is placed below ~ space (flex 1) home (flex 4) space (flex 1) status (flex 1) space (flex 1) color (flex 1)space (flex 1)
// flex 1 for ^
// give space (flex 1)

// if too hard try

// give text "change color by inputting RGB value" (flex 1)
// give RGB value red (flex 1)
// give RGB value green (flex 1)
// give RGB value blue (flex 1)
// container for example of inputter color (flex 3)
// give space (flex 1)
// elevated button for page is placed below ~ space (flex 1) home (flex 4) space (flex 1) status (flex 1) space (flex 1) color (flex 1)space (flex 1)
// flex 1 for ^
// give space (flex 1)

class ColorPick extends StatefulWidget {
  const ColorPick({super.key});

  @override
  State<ColorPick> createState() => _ColorPickState();
}

class _ColorPickState extends State<ColorPick> {
  late int redVal = 0;
  late int greenVal = 0;
  late int blueVal = 0;

  void _pushRGBdata() {
    DatabaseReference _testRef = FirebaseDatabase.instance.refFromURL(
        "https://nocturno-lamp-default-rtdb.asia-southeast1.firebasedatabase.app");
    _testRef..child("led_control").child("red").set(redVal);
    _testRef..child("led_control").child("blue").set(blueVal);
    _testRef..child("led_control").child("green").set(greenVal);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
// Give list of colors
          const Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Column(children: [
                    Expanded(
                      flex: 3,
                      child: AutoSizeText(
                        "Light Color",
                        minFontSize: 0,
                        maxLines: 1,
                        style: TextStyle(
                          fontFamily: 'dancing',
                          fontWeight: FontWeight.w500,
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Expanded(flex: 7, child: ColorCodeLight())
                  ]),
                ),
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 3,
                        child: AutoSizeText(
                          "Dark Color",
                          minFontSize: 0,
                          maxLines: 1,
                          style: TextStyle(
                            fontFamily: 'dancing',
                            fontWeight: FontWeight.w500,
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Expanded(flex: 7, child: ColorCodeDark())
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                const Expanded(
                  flex: 6,
                  child: Align(
                    alignment: Alignment.center,
                    child: AutoSizeText(
                      "Please input RGB (Red Value)",
                      minFontSize: 0,
                      maxLines: 1,
                      style: TextStyle(
                        fontFamily: 'dancing',
                        fontWeight: FontWeight.w500,
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(color: Colors.transparent),
                      ),
                      Expanded(
                        flex: 4,
                        child: Align(
                          alignment: Alignment.center,
                          child: TextField(
                            
                            keyboardType: TextInputType.number,
                            onChanged: (value) {
                              setState(() {
                                if (int.parse(value) >= 1 &&
                                    int.parse(value) <= 255) {
                                  redVal = int.parse(value);
                                } else {
                                  redVal = 255;
                                }
                              });
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(color: Colors.transparent),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                const Expanded(
                  flex: 6,
                  child: Align(
                    alignment: Alignment.center,
                    child: AutoSizeText(
                      "Please input RGB (Green Value)",
                      minFontSize: 0,
                      maxLines: 1,
                      style: TextStyle(
                        fontFamily: 'dancing',
                        fontWeight: FontWeight.w500,
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(color: Colors.transparent),
                      ),
                      Expanded(
                        flex: 4,
                        child: Align(
                          alignment: Alignment.center,
                          child: TextField(
                            
                            keyboardType: TextInputType.number,
                            onChanged: (value) {
                              setState(() {
                                if (int.parse(value) >= 1 &&
                                    int.parse(value) <= 255) {
                                  greenVal = int.parse(value);
                                } else {
                                  greenVal = 255;
                                }
                              });
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(color: Colors.transparent),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                const Expanded(
                  flex: 6,
                  child: Align(
                    alignment: Alignment.center,
                    child: AutoSizeText(
                      "Please input RGB (Blue Value)",
                      minFontSize: 0,
                      maxLines: 1,
                      style: TextStyle(
                        fontFamily: 'dancing',
                        fontWeight: FontWeight.w500,
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(color: Colors.transparent),
                      ),
                      Expanded(
                        flex: 4,
                        child: Align(
                          alignment: Alignment.center,
                          child: TextField(
                          
                            keyboardType: TextInputType.number,
                            onChanged: (value) {
                              setState(() {
                                if (int.parse(value) >= 1 &&
                                    int.parse(value) <= 255) {
                                  blueVal = int.parse(value);
                                } else {
                                  blueVal = 255;
                                }
                              });
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(color: Colors.transparent),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            flex: 2,
            child: Column(
              children: [
                const Expanded(
                  flex: 4,
                  child: AutoSizeText(
                    "Color Preview",
                    minFontSize: 0,
                    maxLines: 1,
                    style: TextStyle(
                      fontFamily: 'dancing',
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
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
                        child: Container(
                          decoration: BoxDecoration(
                            color:
                                Color.fromARGB(255, redVal, greenVal, blueVal),
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
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.transparent,
                  ),
                ),
              ],
            ),
          ),
          // submit rgb value

          Expanded(
            flex: 1,
            child: Column(
              children: [
                Expanded(
                  flex: 8,
                  child: Align(
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            color: Colors.transparent,
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  const MaterialStatePropertyAll<Color>(
                                      Color.fromARGB(255, 255, 191, 0)),
                              minimumSize: const MaterialStatePropertyAll<Size>(
                                  Size.fromHeight(0)),
                              overlayColor:
                                  MaterialStateProperty.resolveWith<Color?>(
                                (Set<MaterialState> states) {
                                  if (states.contains(MaterialState.pressed))
                                    return Colors.black;
                                },
                              ),
                            ),
                            onPressed: () {
                              _pushRGBdata();
                            },
                            child: const AutoSizeText(
                              "Submit",
                              minFontSize: 0,
                              maxLines: 1,
                              style: TextStyle(
                                fontFamily: 'bold',
                                fontWeight: FontWeight.w500,
                                fontSize: 60,
                                color: Colors.white,
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
                        const Expanded(
                          flex: 3,
                          child: AutoSizeText(
                            "   To Change Color\n"
                            "Please Press Submit",
                            minFontSize: 0,
                            maxLines: 2,
                            style: TextStyle(
                              fontFamily: 'dancing',
                              fontWeight: FontWeight.w500,
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            color: Colors.transparent,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.transparent,
                    )),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.transparent,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 255, 191, 0),
                      minimumSize: const Size.fromWidth(0), // NEW
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const Home(
                            key: Key(''),
                          ),
                        ),
                      );
                    },
                    child: const AutoSizeText(
                      "Home",
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
                Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 255, 191, 0),
                      minimumSize: const Size.fromWidth(0), // NEW
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const StatusPage(
                            //need to change to color page
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
                Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 255, 191, 0),
                      minimumSize: const Size.fromWidth(0), // NEW
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
            ),
          ),

          Expanded(
            flex: 1,
            child: Container(color: Colors.transparent),
          ),
        ],
      ),
    );
  }
}
