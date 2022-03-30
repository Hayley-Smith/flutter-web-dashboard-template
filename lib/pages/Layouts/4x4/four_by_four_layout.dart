import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/pages/Layouts/4x4/widgets/quarter_target.dart';

class FourByFourLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Card(
          child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 16 / 9, crossAxisCount: 2),
        children: [
          QuarterTarget(),
          QuarterTarget(),
          QuarterTarget(),
          QuarterTarget(),
        ],
      )),
    );
  }
}
