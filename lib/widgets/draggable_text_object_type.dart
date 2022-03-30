import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/style.dart';

class DraggableTextObjectTypeCard extends StatefulWidget {
  const DraggableTextObjectTypeCard({Key key, this.label, this.itemColor})
      : super(key: key);

  final String label;
  final Color itemColor;

  @override
  State<DraggableTextObjectTypeCard> createState() =>
      _DraggableTextObjectTypeCardState();
}

class _DraggableTextObjectTypeCardState
    extends State<DraggableTextObjectTypeCard> {
  @override
  Widget build(BuildContext context) {
    return Draggable(
        data: "widget.label",
        feedback: Container(
          width: 150.0,
          height: 150.0,
          color: light,
          child: Text("Title & Text"),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Card(
              child: Container(
                width: 150.0,
                height: 150.0,
                child: Text("          Title & Text"),
              ),
            ),
          ),
        ));
  }
}
