import 'package:flutter/material.dart';
import 'package:tutorial2/screens/screen2.dart';
import 'package:tutorial2/widgets/custom_widget.dart';

class HomeScreen extends StatelessWidget {
  bool isChanged = true;

  @override
  Widget build(BuildContext context) {
    print("from stateless");
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomWidget(isChanged: isChanged),
          TextButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return Screen2();
                }));
              },
              child: Text("Navigate"))
        ],
      ),
    );
  }
}
