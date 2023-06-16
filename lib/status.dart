import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tr_new/main.dart';
import 'dart:async';
// import 'package:tr/status.dart';
// import 'package:tr/colorpalette.dart';
// import 'package:tr/data.dart';
import 'package:auto_size_text/auto_size_text.dart';

void main() {
  runApp(const MaterialApp(
    home: Status(),
  ));
}

// input and take data from firebase
// take data - give status for time (flex 1)
// take data - give status for state (on/off) with switch (flex 1)
// ok - give space (flex 1)
// take data - give status for color & RGB ~ RGB horizontal  RGB num red (flex 1) space (flex 1) RGB num green (flex 1) space (flex 1) RGB num blue (flex 1)
// flex 1 for ^
// take data - give status for temp & humid(flex 1)
// ok - give space (flex 1)
// need to do - give status for brightness & adjustment for brightness (flex 1)
// ok - give space (flex 1)
// ok - elevated button for page is placed below ~ space (flex 1) home (flex 4) space (flex 1) status (flex 1) space (flex 1) color (flex 1)space (flex 1)
// flex 1 for ^

class Status extends StatefulWidget {
  const Status({super.key});

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  String TextState = 'OFF';

  String tdata = DateFormat("HH:mm:ss").format(DateTime.now());
  String date = DateFormat.yMMMMEEEEd().format(DateTime.now());
  int brightnessvalue = 0;
  String brightness = "";
  String statestatus = "";
  late int statevalue;
  String datared = "";
  String datablue = "";
  String datagreen = "";
  String Temperature = "";
  String Humidity = "";

  late Timer _timer;
  late Timer _RGBtimer;
  late Timer _temphumid;
  late Timer _bright;

  @override
  void initState() {
    super.initState();
    _timer =
        Timer.periodic(const Duration(milliseconds: 500), (timer) => _update());
    _RGBtimer = Timer.periodic(
        const Duration(milliseconds: 500), (timer) => _getRGBval());
    _temphumid = Timer.periodic(
        const Duration(milliseconds: 500), (timer) => _getTempHumid());
            _bright = Timer.periodic(
        const Duration(milliseconds: 500), (timer) => _getbrightness());

  }

  void _update() {
    setState(() {
      tdata = DateFormat("HH:mm:ss").format(DateTime.now());
      date = DateFormat.yMMMMEEEEd().format(DateTime.now());
    });
  }

  // void _gettemphumid() {
  //   DatabaseReference starCountRef = FirebaseDatabase.instance
  //       .refFromURL(
  //           "https://nocturno-lamp-default-rtdb.asia-southeast1.firebasedatabase.app")
  //       .child("data")
  //       .child("redval");
  //   starCountRef.onValue.listen((DatabaseEvent event) {
  //     final data = event.snapshot.value;
  //   });
  // }

  void _getRGBval() async {
    final redvalue = FirebaseDatabase.instance.ref();
    final bluevalue = FirebaseDatabase.instance.ref();
    final greenvalue = FirebaseDatabase.instance.ref();

    final snapshotred = await redvalue.child('led_control/red').get();
    if (snapshotred.exists) {
      setState(() {
        datared = snapshotred.value.toString();
      });
    } else {
      setState(() {
        datared = 'No data available.';
      });
    }
    final snapshotblue = await redvalue.child('led_control/blue').get();
    if (snapshotblue.exists) {
      setState(() {
        datablue = snapshotblue.value.toString();
      });
    } else {
      setState(() {
        datablue = 'No data available.';
      });
    }
    final snapshotgreen = await redvalue.child('led_control/green').get();
    if (snapshotgreen.exists) {
      setState(() {
        datagreen = snapshotgreen.value.toString();
      });
    } else {
      setState(() {
        datagreen = 'No data available.';
      });
    }
  }

  void _getTempHumid() async {
    final Tempval = FirebaseDatabase.instance.ref();
    final Humidval = FirebaseDatabase.instance.ref();

    final snapshottemp = await Tempval.child('data/temperature').get();
    if (snapshottemp.exists) {
      setState(() {
        Temperature = snapshottemp.value.toString();
      });
    } else {
      setState(() {
        Temperature = 'No data available.';
      });
    }
    final snapshothumid = await Humidval.child('data/humidity').get();
    if (snapshothumid.exists) {
      setState(() {
        Humidity = snapshothumid.value.toString();
      });
    } else {
      setState(() {
        Humidity = 'No data available.';
      });
    }
  }

  void _getbrightness() async {
    final Brightness = FirebaseDatabase.instance.ref();

    final snapshotbright =
        await Brightness.child('led_control/brightness').get();
    if (snapshotbright.exists) {
      setState(() {
        brightness = snapshotbright.value.toString();
      });
    } else {
      setState(() {
        brightness = 'No data available.';
      });
    }
  }

  void _pushbrightness() {
    DatabaseReference _testRef = FirebaseDatabase.instance.refFromURL(
        "https://nocturno-lamp-default-rtdb.asia-southeast1.firebasedatabase.app");
    _testRef..child("led_control").child("brightness").set(brightnessvalue);
  }

  void _pushstate() async {
    final stateval = FirebaseDatabase.instance.ref();

    final snapshotstate = await stateval.child('led_control/state').get();
    if (snapshotstate.exists) {
      setState(() {
        statestatus = snapshotstate.value.toString();
      });
    } else {
      setState(() {
        statestatus = 'No data available.';
      });
    }
    if (statestatus == "1") {
      statevalue = 1;
      TextState = 'ON';
    } else if (statestatus == "0") {
      statevalue = 0;
      TextState = 'OFF';
    }
    statevalue++;
    statevalue = statevalue % 2;
    DatabaseReference _testRef = FirebaseDatabase.instance.refFromURL(
        "https://nocturno-lamp-default-rtdb.asia-southeast1.firebasedatabase.app");
    _testRef..child("led_control").child("state").set(statevalue);
    setState(() {
      if (statevalue == 1) {
        TextState = 'ON';
      } else if (statevalue == 0) {
        TextState = 'OFF';
      }
      // Replace with your logic
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Expanded(
          flex: 1,
          child: AutoSizeText(
            "Time [$tdata] / Date [$date]",
            minFontSize: 0,
            maxLines: 1,
            style: const TextStyle(
              fontFamily: 'bold',
              fontWeight: FontWeight.w500,
              fontSize: 50,
              color: Colors.white,
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.transparent,
                ),
              ),
              // need to give state on or off from flutter
              Expanded(
                flex: 3,
                child: AutoSizeText(
                  "State: $TextState",
                  minFontSize: 0,
                  maxLines: 1,
                  style: TextStyle(
                    fontFamily: 'dancing',
                    fontWeight: FontWeight.w500,
                    fontSize: 50,
                    color: Colors.white,
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
                flex: 3,
                child: ElevatedButton(
                  onPressed: () => _pushstate(),
                  style: ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll<Color>(
                        Color.fromARGB(255, 255, 191, 0)),
                    minimumSize: const MaterialStatePropertyAll<Size>(
                        Size.fromHeight(0)),
                    overlayColor: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed))
                          return Colors.black;
                      },
                    ),
                  ),
                  child: AutoSizeText(
                    TextState,
                    minFontSize: 0,
                    maxLines: 1,
                    style: const TextStyle(
                      fontFamily: 'bold',
                      fontWeight: FontWeight.w500,
                      fontSize: 60,
                      color: Colors.white,
                    ),
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
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.transparent,
          ),
        ),
        Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 4,
                child: AutoSizeText(
                  "RGB value for Red: $datared",
                  minFontSize: 0,
                  maxLines: 1,
                  style: TextStyle(
                    fontFamily: 'dancing',
                    fontWeight: FontWeight.w500,
                    fontSize: 50,
                    color: Colors.white,
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
                flex: 4,
                child: AutoSizeText(
                  "RGB value for Green: $datagreen",
                  minFontSize: 0,
                  maxLines: 1,
                  style: TextStyle(
                    fontFamily: 'dancing',
                    fontWeight: FontWeight.w500,
                    fontSize: 50,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  color: Colors.transparent,
                ),
              ),
              Expanded(
                flex: 4,
                child: AutoSizeText(
                  "RGB value for Blue: $datablue",
                  minFontSize: 0,
                  maxLines: 1,
                  style: TextStyle(
                    fontFamily: 'dancing',
                    fontWeight: FontWeight.w500,
                    fontSize: 50,
                    color: Colors.white,
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  color: Colors.transparent,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.transparent,
                ),
              ),
              Expanded(
                flex: 3,
                child: AutoSizeText(
                  "Temperature: $Temperature",
                  minFontSize: 0,
                  maxLines: 1,
                  style: TextStyle(
                    fontFamily: 'dancing',
                    fontWeight: FontWeight.w500,
                    fontSize: 50,
                    color: Colors.white,
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
                flex: 3,
                child: AutoSizeText(
                  "Humidity : $Humidity",
                  minFontSize: 0,
                  maxLines: 1,
                  style: TextStyle(
                    fontFamily: 'dancing',
                    fontWeight: FontWeight.w500,
                    fontSize: 50,
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
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.transparent,
          ),
        ),
        Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.transparent,
                ),
              ),
              Expanded(
                flex: 2,
                child: AutoSizeText(
                  "Brigthness: $brightness",
                  minFontSize: 0,
                  maxLines: 1,
                  style: TextStyle(
                    fontFamily: 'dancing',
                    fontWeight: FontWeight.w500,
                    fontSize: 50,
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
              
              Expanded(
                flex: 2,
                child: TextField(
                  decoration: const InputDecoration(
                    hintText: "Enter Brigthness",
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    setState(() {
                      if (int.parse(value) >= 1 && int.parse(value) <= 255) {
                        brightnessvalue = int.parse(value);
                      } else {
                        brightnessvalue = 255;
                      }
                      _pushbrightness();
                    });
                  },
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.transparent,
                ),
              ),
              Expanded(
                flex: 2,
                child: AutoSizeText(
                  "Minimum: 1\n"
                  "Maximum: 255",
                  minFontSize: 0,
                  maxLines: 2,
                  style: TextStyle(
                    fontFamily: 'dancing',
                    fontWeight: FontWeight.w500,
                    fontSize: 50,
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
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.transparent,
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
                        builder: (context) => const ColorPage(
                          //need to change to color page
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
          child: Container(
            color: Colors.transparent,
          ),
        ),
      ]),
    );
  }
}
