import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/style.dart';

import 'custom_text.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            key.currentState.openDrawer();
          }),
      title: Container(
        child: Row(
          children: [
            Expanded(child: Container()),
            Container(
              width: 1,
              height: 22,
              color: lightGrey,
            ),
            SizedBox(
              width: 24,
            ),
            CustomText(
              text: "Ameren",
              color: lightGrey,
            ),
            SizedBox(
              width: 16,
            ),
          ],
        ),
      ),
      iconTheme: IconThemeData(color: dark),
      elevation: 0,
      backgroundColor: Colors.transparent,
    );
