import 'package:flutter/material.dart';

import 'package:flutter_web_dashboard/pages/Layouts/4x4/widgets/quarter_target.dart';

class TitleSubtitleChartLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 50,
      child: Column(
        children: [
          QuarterTarget(),
          Expanded(child: QuarterTarget()),
        ],
      ),
    );
  }
}
