import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/pages/Layouts/title_subtitle_chart/title_subtitle_chart_layout.dart';

class ChooseLayoutDropdown extends StatefulWidget {
  const ChooseLayoutDropdown({Key key}) : super(key: key);

  @override
  State<ChooseLayoutDropdown> createState() => _ChooseLayoutDropdownState();
}

class _ChooseLayoutDropdownState extends State<ChooseLayoutDropdown> {
  String dropdownValue = '4x4 Grid';
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>[
        '4x4 Grid',
        'Title andChart',
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => TitleSubtitleChartLayout()),
            );
          },
        );
      }).toList(),
    );
  }
}
