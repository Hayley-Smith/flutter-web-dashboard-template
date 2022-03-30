import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/pages/overview/widgets/bar_chart.dart';

class QuarterTarget extends StatefulWidget {
  const QuarterTarget({Key key}) : super(key: key);

  @override
  State<QuarterTarget> createState() => _QuarterTargetState();
}

class _QuarterTargetState extends State<QuarterTarget> {
  var caughtColor = Colors.grey;
  var displayChart;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DragTarget(onAccept: (Widget chart) {
        displayChart = chart;
      }, builder: (
        BuildContext context,
        List<dynamic> accepted,
        List<dynamic> rejected,
      ) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 240.0,
            height: 200.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: displayChart == null ? caughtColor : Colors.grey.shade200,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child:
                      displayChart == null ? Text("Drag Here!") : displayChart),
            ),
          ),
        );
      }),
    );
  }
}
