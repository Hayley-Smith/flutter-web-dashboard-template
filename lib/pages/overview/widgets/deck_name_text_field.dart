import 'package:flutter/material.dart';

class DeckNameTextField extends StatelessWidget {
  const DeckNameTextField({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "123",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            20,
          ),
        ),
      ),
    );
  }
}
