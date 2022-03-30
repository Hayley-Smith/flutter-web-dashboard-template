import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:flutter_web_dashboard/pages/overview/widgets/bar_chart.dart';

class DraggableChartTypeCard extends StatefulWidget {
  const DraggableChartTypeCard({Key key}) : super(key: key);

  @override
  State<DraggableChartTypeCard> createState() => _DraggableChartTypeCardState();
}

class _DraggableChartTypeCardState extends State<DraggableChartTypeCard> {
  @override
  Widget build(BuildContext context) {
    return Draggable(
        data: SimpleBarChart.withSampleData(),
        feedback: Container(
          width: 120.0,
          height: 120.0,
          color: light,
          child: SimpleBarChart.withSampleData(),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 150.0,
            height: 150.0,
            child: Center(
              child: SimpleBarChart.withSampleData(),
            ),
          ),
        ));
  }
}
