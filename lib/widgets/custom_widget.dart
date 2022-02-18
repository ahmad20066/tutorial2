import 'package:flutter/material.dart';

class CustomWidget extends StatefulWidget {
  bool isChanged;
  CustomWidget({required this.isChanged});

  @override
  _CustomWidgetState createState() => _CustomWidgetState();
}

class _CustomWidgetState extends State<CustomWidget> {
  @override
  void initState() {
    print("init");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("from stateful");
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(widget.isChanged ? "Tutorial" : "Tutorial 2"),
        IconButton(
            onPressed: () {
              setState(() {
                print("from setState");
                widget.isChanged = !widget.isChanged;
              });

              print(widget.isChanged);
            },
            icon: Icon(Icons.add)),
      ],
    ));
  }
}
