import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/helpers/local_navigator.dart';

import 'package:flutter_web_dashboard/widgets/side_panel.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: SidePanel(),
        ),
        Expanded(
            flex: 5,
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: localNavigator(),
            ))
      ],
    );
  }
}
