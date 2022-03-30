import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/widgets/draggable_chart_type_card.dart';

class ChartTypePanel extends StatefulWidget {
  const ChartTypePanel({Key key}) : super(key: key);

  @override
  State<ChartTypePanel> createState() => _ChartTypePanelState();
}

class _ChartTypePanelState extends State<ChartTypePanel> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        DraggableChartTypeCard(),
      ],
    );
  }
}
