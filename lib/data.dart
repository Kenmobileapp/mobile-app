import 'package:flutter/material.dart';
import 'package:tr_new/main.dart';
// import 'package:tr/status.dart';
// import 'package:tr/colorpalette.dart';
// import 'package:tr/data.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:tr_new/chartbrightness.dart';
import 'package:tr_new/chartsensor.dart';
import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

void main() {
  runApp(const MaterialApp(
    home: Data(),
  ));
}

// take data from firebase
// give chart for temp and humidity (flex 3)
// give data for avg, mid, max temp and humid (flex 1) ~ if it can be done
// give space (flex 1)
// give chart for brightness (flex 3)
// edit code (delete temp and humid status switch for chart)
// elevated button for page is placed below ~ space (flex 1) home (flex 4) space (flex 1) status (flex 1) space (flex 1) color (flex 1)space (flex 1)
// flex 1 for ^
// give space (flex 1)

class Data extends StatefulWidget {
  const Data({super.key});

  @override
  State<Data> createState() => _DataState();
}

class _DataState extends State<Data> {
  String TextState = 'OFF';

  String minTemperature = "";
  String minHumidity = "";
  String avgTemperature = "";
  String avgHumidity = "";
  String maxTemperature = "";
  String maxHumidity = "";

  late Timer _alltemphumid;

  @override
  void initState() {
    super.initState();
    _alltemphumid = Timer.periodic(
        const Duration(milliseconds: 500), (timer) => _getallTempHumid());
  }

  void _getallTempHumid() async {
    final Tempval = FirebaseDatabase.instance.ref();
    final Humidval = FirebaseDatabase.instance.ref();

    final snapshotavgtemp = await Tempval.child('data/avg_temperature').get();
    if (snapshotavgtemp.exists) {
      setState(() {
        avgTemperature = snapshotavgtemp.value.toString();
      });
    } else {
      setState(() {
        avgTemperature = 'No data available.';
      });
    }
    final snapshotmintemp = await Tempval.child('data/min_temperature').get();
    if (snapshotmintemp.exists) {
      setState(() {
        minTemperature = snapshotmintemp.value.toString();
      });
    } else {
      setState(() {
        minTemperature = 'No data available.';
      });
    }
    final snapshotmaxtemp = await Tempval.child('data/max_temperature').get();
    if (snapshotmaxtemp.exists) {
      setState(() {
        maxTemperature = snapshotmaxtemp.value.toString();
      });
    } else {
      setState(() {
        maxTemperature = 'No data available.';
      });
    }
    final snapshotavghumid = await Humidval.child('data/avg_humidity').get();
    if (snapshotavghumid.exists) {
      setState(() {
        avgHumidity = snapshotavghumid.value.toString();
      });
    } else {
      setState(() {
        avgHumidity = 'No data available.';
      });
    }
    final snapshotminhumid = await Humidval.child('data/min_humidity').get();
    if (snapshotminhumid.exists) {
      setState(() {
        minHumidity = snapshotminhumid.value.toString();
      });
    } else {
      setState(() {
        minHumidity = 'No data available.';
      });
    }
    final snapshotmaxhumid = await Humidval.child('data/max_humidity').get();
    if (snapshotmaxhumid.exists) {
      setState(() {
        maxHumidity = snapshotmaxhumid.value.toString();
      });
    } else {
      setState(() {
        maxHumidity = 'No data available.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: ChartSensor(),
          ),
          Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2,
                    child: AutoSizeText(
                      "Avg Temp: $avgTemperature",
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
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.transparent,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: AutoSizeText(
                      "Min Temp: $minTemperature",
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
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.transparent,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: AutoSizeText(
                      "Max Temp: $maxTemperature",
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
                ],
              )),
          Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2,
                    child: AutoSizeText(
                      "Avg Humid: $avgHumidity",
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
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.transparent,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: AutoSizeText(
                      "Min Humid: $minHumidity",
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
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.transparent,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: AutoSizeText(
                      "Max Humid: $maxHumidity",
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
                ],
              )),
          Expanded(
            flex: 3,
            child: ChartBrightness(),
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
    );
  }
}
