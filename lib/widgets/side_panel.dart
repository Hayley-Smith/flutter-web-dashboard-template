import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:flutter_web_dashboard/widgets/chart_types_panel.dart';
import 'package:flutter_web_dashboard/widgets/text_objects_panel.dart';

class SidePanel extends StatefulWidget {
  const SidePanel({Key key}) : super(key: key);

  @override
  State<SidePanel> createState() => _SidePanelState();
}

class _SidePanelState extends State<SidePanel> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: light,
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(
                  Icons.bar_chart,
                  color: Colors.black,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.text_fields,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            ChartTypePanel(),
            TextObjectPanel(),
          ],
        ),
      ),
    );
  }
}
