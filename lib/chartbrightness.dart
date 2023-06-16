import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_core/core.dart';
import 'package:intl/intl.dart';
import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

void main() {
  runApp(MaterialApp(
    home: ChartBrightness(),
  ));
}

class ChartBrightness extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  ChartBrightness({Key? key}) : super(key: key);

  @override
  State<ChartBrightness> createState() => _ChartBrightnessState();
}

class _ChartBrightnessState extends State<ChartBrightness> {
  late TooltipBehavior _tooltipBehavior;
  List<Data> data = [
    Data(time: "0", brightness: 0),
    Data(time: "0", brightness: 0),
    Data(time: "0", brightness: 0),
    Data(time: "0", brightness: 0),
  ];

  String tdata = DateFormat("HH:mm").format(DateTime.now());
  int count = 4;
  late Timer _bright;
  double brightness = 0;
  String brightnessvalue = "";
  Timer? timer;
  ChartSeriesController? _chartSeriesController;

  @override
  void initState() {
    _tooltipBehavior = TooltipBehavior(enable: true);
    _bright = Timer.periodic(
        const Duration(milliseconds: 500), (timer) => _getbrightness());
    super.initState();
    timer =
        Timer.periodic(const Duration(milliseconds: 10000), _updateDataSource);
  }

  void _getbrightness() async {
    final Brightness = FirebaseDatabase.instance.ref();

    final snapshotbright =
        await Brightness.child('led_control/brightness').get();
    if (snapshotbright.exists) {
      setState(() {
        brightnessvalue = snapshotbright.value.toString();
      });
    } else {
      setState(() {
        brightnessvalue = 'No data available.';
      });
    }
    brightness = double.parse(brightnessvalue);
  }

  void _updateDataSource(Timer timer) {
    setState(() {
      tdata = DateFormat("HH:mm").format(DateTime.now());
    });
    data.add(Data(time: tdata, brightness: brightness));
    if (data.length == 5) {
      data.removeAt(0);
      _chartSeriesController?.updateDataSource(
        addedDataIndexes: <int>[data.length - 1],
        removedDataIndexes: <int>[0],
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SfCartesianChart(
            primaryXAxis: CategoryAxis(),
            // Chart title
            title: ChartTitle(text: 'Chart for Brigthness'),
            // Enable legend
            legend: Legend(
              isVisible: true,
            ),
            // Enable tooltip
            tooltipBehavior: _tooltipBehavior,
            series: <ChartSeries<Data, String>>[
          LineSeries<Data, String>(
              onRendererCreated: (ChartSeriesController controller) {
                _chartSeriesController = controller;
              },
              name: "Brigthness",
              dataSource: data,
              xValueMapper: (Data data, _) => data.time,
              yValueMapper: (Data data, _) => data.brightness,
              // Enable data label
              dataLabelSettings: const DataLabelSettings(isVisible: true)),
        ]));
  }
}

class Data {
  //modal class for Person object
  String time;
  double brightness;
  Data({required this.time, required this.brightness});
}
