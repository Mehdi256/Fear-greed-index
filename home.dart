import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:shakhes_fear_greed/service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int value = 50;

  @override
  void initState() {
    super.initState();
    Service.fetchIndex().then((v) => setState(() => value = v));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('شاخص ترس و طمع')),
      body: Center(
        child: SfRadialGauge(
          axes: [
            RadialAxis(
              startAngle: 180,
              endAngle: 0,
              minimum: 0,
              maximum: 100,
              ranges: SettingsService.buildRanges(),
              pointers: [NeedlePointer(value: value.toDouble())],
              annotations: [
                GaugeAnnotation(widget: Text('$value', style: SettingsService.textStyle()))
              ],
            )
          ],
        ),
      ),
    );
  }
}
