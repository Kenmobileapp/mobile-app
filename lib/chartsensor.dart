import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_core/core.dart';
import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MaterialApp(
    home: ChartSensor(),
  ));
}

class ChartSensor extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  ChartSensor({Key? key}) : super(key: key);

  @override
  State<ChartSensor> createState() => _ChartSensorState();
}

class _ChartSensorState extends State<ChartSensor> {
  late TooltipBehavior _tooltipBehavior;
  Timer? timer;
  ChartSeriesController? _chartSeriesController;

  List<Data> data = [
    Data(time: "0", temp: 0, humid: 0),
    Data(time: "0", temp: 0, humid: 0),
    Data(time: "0", temp: 0, humid: 0),
    Data(time: "0", temp: 0, humid: 0),
  ];

  String tdata = DateFormat("HH:mm").format(DateTime.now());
  String avg_humidity = "";
  String avg_temperature = "";
  late double tempvalue = 0;
  late double humidvalue = 0;
  int count = 4;

  late Timer _alltemphumid;

  @override
  void _getallTempHumid() async {
    final Tempval = FirebaseDatabase.instance.ref();
    final Humidval = FirebaseDatabase.instance.ref();

    final snapshotavgtemp = await Tempval.child('data/avg_temperature').get();
    if (snapshotavgtemp.exists) {
      setState(() {
        avg_temperature = snapshotavgtemp.value.toString();
      });
    } else {
      setState(() {
        avg_temperature = '0';
      });
    }
    final snapshotavghumid = await Humidval.child('data/avg_humidity').get();
    if (snapshotavghumid.exists) {
      setState(() {
        avg_humidity = snapshotavghumid.value.toString();
      });
    } else {
      setState(() {
        avg_humidity = '0';
      });
    }
    tempvalue = double.parse(avg_temperature);
    humidvalue = double.parse(avg_humidity);
  }

  void initState() {
    _tooltipBehavior = TooltipBehavior(enable: true);

    super.initState();
    _alltemphumid = Timer.periodic(
        const Duration(milliseconds: 500), (timer) => _getallTempHumid());
    timer =
        Timer.periodic(const Duration(milliseconds: 20000), _updateDataSource);
  }

  void _updateDataSource(Timer timer) {
    setState(() {
      tdata = DateFormat("HH:mm").format(DateTime.now());
    });
    data.add(Data(time: tdata, temp: tempvalue, humid: humidvalue));
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
            title: ChartTitle(text: 'Average of Temperature and Humidity'),
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
            name: "Temperature",
            dataSource: data,
            xValueMapper: (Data data, _) => data.time,
            yValueMapper: (Data data, _) => data.temp,
            // Enable data label
            // dataLabelSettings: const DataLabelSettings(isVisible: true)
          ),
          LineSeries<Data, String>(
            onRendererCreated: (ChartSeriesController controller) {
              _chartSeriesController = controller;
            },
            name: "Humidity",
            dataSource: data,
            xValueMapper: (Data data, _) => data.time,
            yValueMapper: (Data data, _) => data.humid,
            // Enable data label
            // dataLabelSettings: const DataLabelSettings(isVisible: true),
          )
        ]));
  }
}

class Data {
  //modal class for Person object
  String time;
  double temp;
  double humid;
  Data({required this.time, required this.temp, required this.humid});
}
