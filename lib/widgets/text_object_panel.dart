import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/widgets/draggable_text_object_type.dart';

class TextObjectPanel extends StatefulWidget {
  const TextObjectPanel({Key key}) : super(key: key);

  @override
  State<TextObjectPanel> createState() => _TextObjectPanelState();
}

class _TextObjectPanelState extends State<TextObjectPanel> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        DraggableTextObjectTypeCard(),
        DraggableTextObjectTypeCard(),
        DraggableTextObjectTypeCard(),
      ],
    );
  }
}
